import 'package:dynamic_app/src/common/utils/default_click_listener.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class WidgetsParser extends StatelessWidget {
  final String data;
  WidgetsParser({required this.data});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget?>(
      future: _buildWidget(context, data),
      builder: (BuildContext context, AsyncSnapshot<Widget?> __) {
        if (__.hasError) {
          print(__.error);
        }
        return __.hasData
            ? DynamicWidgetJsonExportor(
                child: __.data,
              )
            : LoadingIndicator();
      },
    );
  }

  Future<Widget?> _buildWidget(BuildContext context, widgets) async {
    return DynamicWidgetBuilder.build(widgets, context, DefaultClickListener());
  }
}
