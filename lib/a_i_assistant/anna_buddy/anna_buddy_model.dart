import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anna_buddy_widget.dart' show AnnaBuddyWidget;
import 'package:flutter/material.dart';

class AnnaBuddyModel extends FlutterFlowModel<AnnaBuddyWidget> {
  ///  Local state fields for this page.

  String? temptext;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Anna_buddy widget.
  AnnaBuddyRecord? exixtingAIChatFarmer;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to Anna Buddy  ] action in IconButton widget.
  String? aiOutput;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
