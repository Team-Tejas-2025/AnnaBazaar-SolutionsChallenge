import '/buyer_u_i_components/buyer_nav_bar/buyer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categories_section_buyer_widget.dart' show CategoriesSectionBuyerWidget;
import 'package:flutter/material.dart';

class CategoriesSectionBuyerModel
    extends FlutterFlowModel<CategoriesSectionBuyerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Buyer_Nav_Bar component.
  late BuyerNavBarModel buyerNavBarModel;

  @override
  void initState(BuildContext context) {
    buyerNavBarModel = createModel(context, () => BuyerNavBarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    buyerNavBarModel.dispose();
  }
}
