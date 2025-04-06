import '/components_for_app/divider_2/divider2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'google_login_phone_login_buyer_widget.dart'
    show GoogleLoginPhoneLoginBuyerWidget;
import 'package:flutter/material.dart';

class GoogleLoginPhoneLoginBuyerModel
    extends FlutterFlowModel<GoogleLoginPhoneLoginBuyerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for divider_2 component.
  late Divider2Model divider2Model;

  @override
  void initState(BuildContext context) {
    divider2Model = createModel(context, () => Divider2Model());
  }

  @override
  void dispose() {
    divider2Model.dispose();
  }
}
