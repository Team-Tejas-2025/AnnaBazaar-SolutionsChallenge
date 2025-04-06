import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'aadhar_card_upload_widget.dart' show AadharCardUploadWidget;
import 'package:flutter/material.dart';

class AadharCardUploadModel extends FlutterFlowModel<AadharCardUploadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
