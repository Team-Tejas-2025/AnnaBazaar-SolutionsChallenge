import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'submit_for_verfication_widget.dart' show SubmitForVerficationWidget;
import 'package:flutter/material.dart';

class SubmitForVerficationModel
    extends FlutterFlowModel<SubmitForVerficationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
