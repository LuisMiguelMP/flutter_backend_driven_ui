import 'package:dynamic_app/src/common/constants/constants.dart';
import 'package:dynamic_app/src/widgets/data_listener/firestore_listener_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FirestoreListener(
        collection: StringConstants.pagesCollection,
        document: StringConstants.homePageDocument,
        field: StringConstants.widgetsField);
  }
}
