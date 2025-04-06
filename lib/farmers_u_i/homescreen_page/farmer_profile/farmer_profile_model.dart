import '/farmer_u_i_components/farmer_nav_bar/farmer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'farmer_profile_widget.dart' show FarmerProfileWidget;
import 'package:flutter/material.dart';

class FarmerProfileModel extends FlutterFlowModel<FarmerProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
