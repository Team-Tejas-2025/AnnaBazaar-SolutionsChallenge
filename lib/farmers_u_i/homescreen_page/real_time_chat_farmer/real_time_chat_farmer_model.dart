import '/components_for_app/messege_sending_text_field/messege_sending_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'real_time_chat_farmer_widget.dart' show RealTimeChatFarmerWidget;
import 'package:flutter/material.dart';

class RealTimeChatFarmerModel
    extends FlutterFlowModel<RealTimeChatFarmerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for messege_Sending_TextField component.
  late MessegeSendingTextFieldModel messegeSendingTextFieldModel;

  @override
  void initState(BuildContext context) {
    messegeSendingTextFieldModel =
        createModel(context, () => MessegeSendingTextFieldModel());
  }

  @override
  void dispose() {
    messegeSendingTextFieldModel.dispose();
  }
}
