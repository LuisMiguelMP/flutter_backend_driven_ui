import 'package:dynamic_app/src/common/constants/constants.dart';
import 'package:dynamic_widget/dynamic_widget.dart';

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {
    print(StringConstants.clickEventMessage +
        (event == null ? StringConstants.empty : event));
  }
}
