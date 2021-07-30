import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class FirestoreListener extends StatelessWidget {
  final String collection;
  final String document;
  final String field;

  FirestoreListener(
      {required this.collection, required this.document, required this.field});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection(collection)
          .doc(document)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> _) {
        if (_.hasError) {
          print(_.error);
        }
        return _.hasData
            ? WidgetsParser(
                data: _.data!.get(field),
              )
            : LoadingIndicator();
      },
    );
  }
}
