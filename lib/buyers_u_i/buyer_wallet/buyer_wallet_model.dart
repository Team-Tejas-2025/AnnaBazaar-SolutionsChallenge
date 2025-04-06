import '/buyer_u_i_components/buyer_nav_bar/buyer_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'buyer_wallet_widget.dart' show BuyerWalletWidget;
import 'package:flutter/material.dart';

class BuyerWalletModel extends FlutterFlowModel<BuyerWalletWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
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
