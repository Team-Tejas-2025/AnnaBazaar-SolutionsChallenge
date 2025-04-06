import '/farmer_u_i_components/quickaction/quickaction_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'farmer_nav_bar_model.dart';
export 'farmer_nav_bar_model.dart';

class FarmerNavBarWidget extends StatefulWidget {
  const FarmerNavBarWidget({
    super.key,
    int? pageIndex,
  }) : this.pageIndex = pageIndex ?? 1;

  final int pageIndex;

  @override
  State<FarmerNavBarWidget> createState() => _FarmerNavBarWidgetState();
}

class _FarmerNavBarWidgetState extends State<FarmerNavBarWidget>
    with TickerProviderStateMixin {
  late FarmerNavBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FarmerNavBarModel());

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
                color: Color(0xFFEFFAEF),
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
                          FarmerHomescreenPageWidget.routeName,
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
                          if (widget.pageIndex == 1) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_sharp,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '27cnz17a' /* Home */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                    'srg58vk9' /* Home */,
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
                          SmartFarmingToolWidget.routeName,
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
                          if (widget.pageIndex == 2) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.eco_sharp,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '0vgqal5e' /* FarmTech */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                  Icons.eco_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'a32z0uf7' /* FarmTech */,
                                  ),
                                  minFontSize: 13.0,
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
                        context.goNamed(
                          AnnaWalletFarmerWidget.routeName,
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
                          if (widget.pageIndex == 4) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 28.0,
                                ),
                                AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    '4823jlti' /* Wallet */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                    '4t9e9k3y' /* Wallet */,
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
                          FarmerProfileWidget.routeName,
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
                          if (widget.pageIndex == 5) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 28.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'vzopo7o8' /* Profile */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    '8at3w563' /* Profile */,
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
                        child: QuickactionWidget(),
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
                  color: Color(0xFF43E788),
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 74.0,
                    height: 74.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Builder(
                      builder: (context) {
                        if (widget.pageIndex == 3) {
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
                                      child: QuickactionWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Icon(
                              Icons.bolt_sharp,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['iconOnActionTriggerAnimation']!,
                          );
                        } else {
                          return Icon(
                            Icons.bolt_sharp,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
