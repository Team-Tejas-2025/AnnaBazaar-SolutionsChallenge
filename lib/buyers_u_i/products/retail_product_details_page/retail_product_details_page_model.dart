import '/buyer_u_i_components/price_snack_bar/price_snack_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'retail_product_details_page_widget.dart'
    show RetailProductDetailsPageWidget;
import 'package:flutter/material.dart';

class RetailProductDetailsPageModel
    extends FlutterFlowModel<RetailProductDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // Model for price_snack_bar component.
  late PriceSnackBarModel priceSnackBarModel;

  @override
  void initState(BuildContext context) {
    priceSnackBarModel = createModel(context, () => PriceSnackBarModel());
  }

  @override
  void dispose() {
    priceSnackBarModel.dispose();
  }
}
