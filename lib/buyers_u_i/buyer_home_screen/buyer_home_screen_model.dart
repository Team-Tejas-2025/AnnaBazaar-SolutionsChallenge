import '/buyer_u_i_components/buyer_nav_bar/buyer_nav_bar_widget.dart';
import '/components_for_app/a_notification_icon/a_notification_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'buyer_home_screen_widget.dart' show BuyerHomeScreenWidget;
import 'package:flutter/material.dart';

class BuyerHomeScreenModel extends FlutterFlowModel<BuyerHomeScreenWidget> {
  ///  Local state fields for this page.

  String? follow;

  ///  State fields for stateful widgets in this page.

  // Model for a_notification_icon component.
  late ANotificationIconModel aNotificationIconModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Buyer_Nav_Bar component.
  late BuyerNavBarModel buyerNavBarModel;

  @override
  void initState(BuildContext context) {
    aNotificationIconModel =
        createModel(context, () => ANotificationIconModel());
    buyerNavBarModel = createModel(context, () => BuyerNavBarModel());
  }

  @override
  void dispose() {
    aNotificationIconModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    buyerNavBarModel.dispose();
  }
}
