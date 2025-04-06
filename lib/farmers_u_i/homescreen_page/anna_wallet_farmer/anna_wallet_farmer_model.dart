import '/farmer_u_i_components/farmer_nav_bar/farmer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anna_wallet_farmer_widget.dart' show AnnaWalletFarmerWidget;
import 'package:flutter/material.dart';

class AnnaWalletFarmerModel extends FlutterFlowModel<AnnaWalletFarmerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for farmer_Nav_bar component.
  late FarmerNavBarModel farmerNavBarModel;

  @override
  void initState(BuildContext context) {
    farmerNavBarModel = createModel(context, () => FarmerNavBarModel());
  }

  @override
  void dispose() {
    farmerNavBarModel.dispose();
  }
}
