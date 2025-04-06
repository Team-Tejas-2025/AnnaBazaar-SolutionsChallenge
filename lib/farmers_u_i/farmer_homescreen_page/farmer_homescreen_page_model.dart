import '/components_for_app/a_notification_icon/a_notification_icon_widget.dart';
import '/farmer_u_i_components/farmer_nav_bar/farmer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'farmer_homescreen_page_widget.dart' show FarmerHomescreenPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FarmerHomescreenPageModel
    extends FlutterFlowModel<FarmerHomescreenPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for a_notification_icon component.
  late ANotificationIconModel aNotificationIconModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for farmer_Nav_bar component.
  late FarmerNavBarModel farmerNavBarModel;

  @override
  void initState(BuildContext context) {
    aNotificationIconModel =
        createModel(context, () => ANotificationIconModel());
    farmerNavBarModel = createModel(context, () => FarmerNavBarModel());
  }

  @override
  void dispose() {
    aNotificationIconModel.dispose();
    farmerNavBarModel.dispose();
  }
}
