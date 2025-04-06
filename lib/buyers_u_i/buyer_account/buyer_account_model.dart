import '/buyer_u_i_components/buyer_nav_bar/buyer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'buyer_account_widget.dart' show BuyerAccountWidget;
import 'package:flutter/material.dart';

class BuyerAccountModel extends FlutterFlowModel<BuyerAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Buyer_Nav_Bar component.
  late BuyerNavBarModel buyerNavBarModel;

  @override
  void initState(BuildContext context) {
    buyerNavBarModel = createModel(context, () => BuyerNavBarModel());
  }

  @override
  void dispose() {
    buyerNavBarModel.dispose();
  }
}
