import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_pverification_updateprofile_widget.dart'
    show OTPverificationUpdateprofileWidget;
import 'package:flutter/material.dart';

class OTPverificationUpdateprofileModel
    extends FlutterFlowModel<OTPverificationUpdateprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
