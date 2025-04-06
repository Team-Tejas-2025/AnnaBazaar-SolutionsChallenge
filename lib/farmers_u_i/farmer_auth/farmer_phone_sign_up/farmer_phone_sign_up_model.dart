import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'farmer_phone_sign_up_widget.dart' show FarmerPhoneSignUpWidget;
import 'package:flutter/material.dart';

class FarmerPhoneSignUpModel extends FlutterFlowModel<FarmerPhoneSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Phone_Number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
