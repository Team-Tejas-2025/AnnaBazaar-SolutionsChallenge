import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'retail_upload_products_edit_widget.dart'
    show RetailUploadProductsEditWidget;
import 'package:flutter/material.dart';

class RetailUploadProductsEditModel
    extends FlutterFlowModel<RetailUploadProductsEditWidget> {
  ///  Local state fields for this page.

  AIGeneratedProductListingStruct? generated;
  void updateGeneratedStruct(
      Function(AIGeneratedProductListingStruct) updateFn) {
    updateFn(generated ??= AIGeneratedProductListingStruct());
  }

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for ProductDescription widget.
  FocusNode? productDescriptionFocusNode;
  TextEditingController? productDescriptionTextController;
  String? Function(BuildContext, String?)?
      productDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    categoryFocusNode?.dispose();
    categoryTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    productDescriptionFocusNode?.dispose();
    productDescriptionTextController?.dispose();
  }
}
