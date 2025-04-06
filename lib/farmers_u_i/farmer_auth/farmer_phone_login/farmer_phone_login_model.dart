import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'farmer_phone_login_widget.dart' show FarmerPhoneLoginWidget;
import 'package:flutter/material.dart';

class FarmerPhoneLoginModel extends FlutterFlowModel<FarmerPhoneLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
