import '/buyer_u_i_components/quickaction_buyer/quickaction_buyer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'buyer_nav_bar_model.dart';
export 'buyer_nav_bar_model.dart';

class BuyerNavBarWidget extends StatefulWidget {
  const BuyerNavBarWidget({
    super.key,
    required this.pagename,
  });

  final String? pagename;

  @override
  State<BuyerNavBarWidget> createState() => _BuyerNavBarWidgetState();
}

class _BuyerNavBarWidgetState extends State<BuyerNavBarWidget>
    with TickerProviderStateMixin {
  late BuyerNavBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyerNavBarModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 2.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 27.0, 0.0, 0.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              curve: Curves.easeIn,
              width: double.infinity,
              height: 72.0,
              constraints: BoxConstraints(
                minHeight: 76.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFE4EDF3),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          BuyerHomeScreenWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Builder(
                        builder: (context) {
                          if (widget.pagename == '1') {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_sharp,
                                  color: Color(0xFF01579B),
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '9r3734eh' /* Home */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF01579B),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '1eyw9itj' /* Home */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          CategoriesSectionBuyerWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Builder(
                        builder: (context) {
                          if (widget.pagename == '2') {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color(0xFF01579B),
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    's7lsik9e' /* Menu  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF01579B),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'kml8cqdz' /* Menu  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Spacer(flex: 3),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          BuyerWalletWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Builder(
                        builder: (context) {
                          if (widget.pagename == '4') {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: Color(0xFF01579B),
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'zuwat263' /* Wallet */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF01579B),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '2030iwze' /* Wallet */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          BuyerAccountWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Builder(
                        builder: (context) {
                          if (widget.pagename == '5') {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Color(0xFF01579B),
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'qcitmc2z' /* Profile */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF01579B),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tgfqptwk' /* Account */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(width: 8.0))
                    .addToStart(SizedBox(width: 14.0))
                    .addToEnd(SizedBox(width: 14.0)),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: Container(
                        height: 790.0,
                        child: QuickactionBuyerWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeIn,
                width: 86.0,
                height: 86.0,
                decoration: BoxDecoration(
                  color: Color(0xFF01579B),
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 74.0,
                    height: 74.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0F7FA),
                      shape: BoxShape.circle,
                    ),
                    child: Builder(
                      builder: (context) {
                        if (widget.pagename == '3') {
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height: 790.0,
                                      child: QuickactionBuyerWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Icon(
                              Icons.bolt_sharp,
                              color: Color(0xFF01579B),
                              size: 28.0,
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['iconOnActionTriggerAnimation']!,
                          );
                        } else {
                          return Icon(
                            Icons.bolt_sharp,
                            color: Color(0xFF01579B),
                            size: 28.0,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
