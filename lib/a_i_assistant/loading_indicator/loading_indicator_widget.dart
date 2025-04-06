import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loading_indicator_model.dart';
export 'loading_indicator_model.dart';

class LoadingIndicatorWidget extends StatefulWidget {
  const LoadingIndicatorWidget({super.key});

  @override
  State<LoadingIndicatorWidget> createState() => _LoadingIndicatorWidgetState();
}

class _LoadingIndicatorWidgetState extends State<LoadingIndicatorWidget> {
  late LoadingIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/jsons/Animation_-_1743707603763.json',
      width: 380.3,
      height: 379.23,
      fit: BoxFit.contain,
      animate: true,
    );
  }
}
