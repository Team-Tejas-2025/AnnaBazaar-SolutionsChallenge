import '/backend/api_requests/api_calls.dart';
import '/farmer_u_i_components/farmer_nav_bar/farmer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'smart_farming_tool_widget.dart' show SmartFarmingToolWidget;
import 'package:flutter/material.dart';

class SmartFarmingToolModel extends FlutterFlowModel<SmartFarmingToolWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Realtime Weather)] action in smart_farming_tool widget.
  ApiCallResponse? weatherAPI;
  Completer<ApiCallResponse>? apiRequestCompleter;
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

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
