import '/a_i_assistant/loading_indicator/loading_indicator_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/ai_agents/ai_agent.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'anna_buddy_model.dart';
export 'anna_buddy_model.dart';

class AnnaBuddyWidget extends StatefulWidget {
  const AnnaBuddyWidget({super.key});

  static String routeName = 'Anna_buddy';
  static String routePath = '/annaBuddy';

  @override
  State<AnnaBuddyWidget> createState() => _AnnaBuddyWidgetState();
}

class _AnnaBuddyWidgetState extends State<AnnaBuddyWidget> {
  late AnnaBuddyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnnaBuddyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.exixtingAIChatFarmer = await queryAnnaBuddyRecordOnce(
        queryBuilder: (annaBuddyRecord) => annaBuddyRecord.where(
          'user_ref',
          isEqualTo: currentUserDocument?.farmerRefernce,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.exixtingAIChatFarmer?.reference != null) {
        return;
      }

      await AnnaBuddyRecord.collection.doc().set(createAnnaBuddyRecordData(
            userRef: currentUserDocument?.farmerRefernce,
            conversationalId: currentUserDocument?.farmerRefernce?.id,
          ));
      return;
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 62.4,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1.0),
                          bottomRight: Radius.circular(1.0),
                          topLeft: Radius.circular(1.0),
                          topRight: Radius.circular(1.0),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/a-logo-with-the-stylized-text-anna-bazaar-in-blue--cSOBtJgITKSGDXcd8Q3LiQ-u1PtVPAAQEC_hFpV-LVJyA.png',
                                  width: 98.5,
                                  height: 215.53,
                                  fit: BoxFit.contain,
                                  alignment: Alignment(0.0, -1.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          '4x0p19yo' /* Anna Buddy */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mukta',
                                              fontSize: 21.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 25.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 4.0,
                                buttonSize: 48.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                hoverColor: Color(0x4A898686),
                                hoverIconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                icon: Icon(
                                  Icons.rotate_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: AuthUserStreamWidget(
                      builder: (context) =>
                          StreamBuilder<List<AnnaBuddyRecord>>(
                        stream: queryAnnaBuddyRecord(
                          queryBuilder: (annaBuddyRecord) =>
                              annaBuddyRecord.where(
                            'user_ref',
                            isEqualTo: currentUserDocument?.farmerRefernce,
                          ),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: LoadingIndicatorWidget(),
                            );
                          }
                          List<AnnaBuddyRecord> bodyAnnaBuddyRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final bodyAnnaBuddyRecord =
                              bodyAnnaBuddyRecordList.isNotEmpty
                                  ? bodyAnnaBuddyRecordList.first
                                  : null;

                          return Container(
                            width: 100.0,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 90.0),
                                  child: StreamBuilder<List<FarmerAiRecord>>(
                                    stream: queryFarmerAiRecord(
                                      queryBuilder: (farmerAiRecord) =>
                                          farmerAiRecord
                                              .where(
                                                'aiChat_ref',
                                                isEqualTo: bodyAnnaBuddyRecord
                                                    ?.reference,
                                              )
                                              .orderBy('sent_data_time'),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: SpinKitFadingCube(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 40.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<FarmerAiRecord>
                                          listViewFarmerAiRecordList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewFarmerAiRecordList.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 16.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewFarmerAiRecord =
                                              listViewFarmerAiRecordList[
                                                  listViewIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (listViewFarmerAiRecord.role ==
                                                  'System')
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 31.1,
                                                            height: 38.2,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .contain,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/Leonardo_Phoenix_Create_a_friendly_humanoid_AI_assistant_chara_0.png',
                                                                ).image,
                                                              ),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '2mqqsr0a' /* Anna Buddy */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Merriweather',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                dateTimeFormat(
                                                                  "relative",
                                                                  listViewFarmerAiRecord
                                                                      .sentDataTime!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 12.0)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 280.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE8F5F0),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      listViewFarmerAiRecord
                                                                          .messageText,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (listViewFarmerAiRecord.role ==
                                                  'Famer Message')
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            StreamBuilder<
                                                                List<
                                                                    FarmerAccountRecord>>(
                                                              stream:
                                                                  queryFarmerAccountRecord(
                                                                queryBuilder: (farmerAccountRecord) =>
                                                                    farmerAccountRecord
                                                                        .whereIn(
                                                                            'f_images',
                                                                            []),
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<FarmerAccountRecord>
                                                                    containerFarmerAccountRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                // Return an empty Container when the item does not exist.
                                                                if (snapshot
                                                                    .data!
                                                                    .isEmpty) {
                                                                  return Container();
                                                                }
                                                                final containerFarmerAccountRecord =
                                                                    containerFarmerAccountRecordList
                                                                            .isNotEmpty
                                                                        ? containerFarmerAccountRecordList
                                                                            .first
                                                                        : null;

                                                                return Container(
                                                                  width: 31.0,
                                                                  height: 33.2,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child:
                                                                        CachedNetworkImage(
                                                                      fadeInDuration:
                                                                          Duration(
                                                                              milliseconds: 1),
                                                                      fadeOutDuration:
                                                                          Duration(
                                                                              milliseconds: 1),
                                                                      imageUrl:
                                                                          containerFarmerAccountRecord!
                                                                              .fImages,
                                                                      width:
                                                                          200.0,
                                                                      height:
                                                                          200.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                            StreamBuilder<
                                                                List<
                                                                    FarmerAccountRecord>>(
                                                              stream:
                                                                  queryFarmerAccountRecord(
                                                                queryBuilder: (farmerAccountRecord) =>
                                                                    farmerAccountRecord
                                                                        .whereIn(
                                                                            'f_name',
                                                                            []),
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<FarmerAccountRecord>
                                                                    textFarmerAccountRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                // Return an empty Container when the item does not exist.
                                                                if (snapshot
                                                                    .data!
                                                                    .isEmpty) {
                                                                  return Container();
                                                                }
                                                                final textFarmerAccountRecord =
                                                                    textFarmerAccountRecordList
                                                                            .isNotEmpty
                                                                        ? textFarmerAccountRecordList
                                                                            .first
                                                                        : null;

                                                                return Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    textFarmerAccountRecord
                                                                        ?.fName,
                                                                    'Swapnil',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  dateTimeFormat(
                                                                    "relative",
                                                                    listViewFarmerAiRecord
                                                                        .sentDataTime!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              width: 280.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE1F0FF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (listViewFarmerAiRecord.image !=
                                                                            '')
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          fadeInDuration:
                                                                              Duration(milliseconds: 0),
                                                                          fadeOutDuration:
                                                                              Duration(milliseconds: 0),
                                                                          imageUrl:
                                                                              listViewFarmerAiRecord.image,
                                                                          width:
                                                                              256.0,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        listViewFarmerAiRecord
                                                                            .messageText,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          );
                                        },
                                        controller: _model.listViewController,
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 5.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 76.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 850.0,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        borderRadius: 6.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        hoverIconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        icon: Icon(
                                                          Icons
                                                              .add_photo_alternate,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            imageQuality: 100,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              _model.isDataUploading =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            }
                                                          }
                                                        },
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      30.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 222.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textController,
                                                              focusNode: _model
                                                                  .textFieldFocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'i7bs8iic' /* Write your prompt here... */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedErrorBorder:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              validator: _model
                                                                  .textControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        borderRadius: 6.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        hoverIconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        icon: Icon(
                                                          Icons.send_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await FarmerAiRecord
                                                                  .createDoc(
                                                                      bodyAnnaBuddyRecord!
                                                                          .reference)
                                                              .set(
                                                                  createFarmerAiRecordData(
                                                            role:
                                                                'Famer Message',
                                                            messageText: _model
                                                                .textController
                                                                .text,
                                                            sentDataTime:
                                                                getCurrentTimestamp,
                                                            image: _model
                                                                .uploadedFileUrl,
                                                            aiChatRef:
                                                                bodyAnnaBuddyRecord
                                                                    .reference,
                                                          ));
                                                          _model.temptext =
                                                              _model
                                                                  .textController
                                                                  .text;
                                                          safeSetState(() {
                                                            _model.isDataUploading =
                                                                false;
                                                            _model.uploadedLocalFile =
                                                                FFUploadedFile(
                                                                    bytes: Uint8List
                                                                        .fromList(
                                                                            []));
                                                            _model.uploadedFileUrl =
                                                                '';
                                                          });

                                                          safeSetState(() {
                                                            _model
                                                                .textController
                                                                ?.clear();
                                                          });
                                                          await callAiAgent(
                                                            context: context,
                                                            prompt:
                                                                valueOrDefault<
                                                                    String>(
                                                              _model.temptext,
                                                              '123',
                                                            ),
                                                            imageUrl: _model
                                                                .uploadedFileUrl,
                                                            threadId:
                                                                valueOrDefault<
                                                                    String>(
                                                              bodyAnnaBuddyRecord
                                                                  .conversationalId,
                                                              '123',
                                                            ),
                                                            agentCloudFunctionName:
                                                                'annaBuddy',
                                                            provider: 'GOOGLE',
                                                            agentJson:
                                                                "{\"status\":\"LIVE\",\"identifier\":{\"name\":\"annaBuddy\",\"key\":\"5enpg\"},\"name\":\"Anna Buddy  \",\"description\":\"Anna Buddy is your smart farming assistant in the Anna Bazaar app. From AI-powered product uploads to real-time market insights and weather updates, Anna Buddy helps farmers manage their business with ease. Stay informed, optimize your sales, and make the most of your harvest—all in one place!\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.0-flash-001\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":5000},\"topP\":{\"inputValue\":0.92}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"You are Anna Buddy, the intelligent assistant for the Anna Bazaar app, designed exclusively to support farmers. Your primary role is to assist farmers with all aspects of using the app and managing their agricultural business. Follow these guidelines in your responses:\\n\\nCore Responsibilities:\\nFarming Assistance:\\n\\nProvide expert guidance on crop selection, cultivation techniques, pest control, and sustainable farming practices.\\n\\nOffer personalized seasonal crop tips based on the farmer’s region and current time of year.\\n\\nProduct Uploads & Order Management:\\n\\nHelp farmers easily upload their products by using AI assistance to auto-fill necessary details.\\n\\nGuide farmers in managing their orders efficiently, including confirmations and tracking sales.\\n\\nMarket & Weather Insights:\\n\\nDeliver real-time market trends, crop prices, and demand insights to enable informed decision-making.\\n\\nProvide timely weather updates to help farmers plan their activities effectively.\\n\\nGovernment Schemes & App Support:\\n\\nInform farmers about relevant government subsidies, schemes, and support programs.\\n\\nOffer detailed support on navigating the Anna Bazaar app, addressing technical issues, and explaining features.\\n\\nResponse Guidelines:\\nFarmer-Focused:\\n\\nOnly respond to queries related to farming, product management, market trends, weather updates, and the functionalities of the Anna Bazaar app.\\n\\nPolitely redirect any questions that are not related to farming or the app by stating:\\n\\\"I’m here to assist you with farming and the Anna Bazaar app. Let me know how I can help!\\\"\\n\\nTone & Style:\\n\\nMaintain a friendly, clear, and supportive tone.\\n\\nUse simple, jargon-free language that is easy for farmers to understand.\\n\\nBe concise yet thorough in your responses.\\n\\nApp-Specific Reminders:\\n\\nAlways reference the Anna Bazaar app when discussing product uploads, market trends, or any technical support.\\n\\nEnsure that any guidance provided ties directly into enhancing the farmer’s experience with the app.\\n\\nYour goal is to empower farmers by offering smart, relevant, and actionable advice through the Anna Bazaar app. How can I assist you today?\"},{\"role\":\"USER\",\"text\":\"Hey Anna Buddy, I need help with my farming and sales. What can you do?\"},{\"role\":\"ASSISTANT\",\"text\":\"Hello, farmer! 🌾 I’m Anna Buddy, your smart assistant in the Anna Bazaar app. Here’s how I can help you:\\n\\n✅ AI-powered product uploads – Just upload a picture, and I’ll auto-fill the details.\\n📊 Real-time market prices & trends – Stay ahead with the latest crop rates.\\n🌱 Smart farming tips – Get seasonal advice based on your location.\\n⏳ Weather insights – Plan your work with real-time forecasts.\\n📦 Order & sales management – Confirm, track, and handle buyer requests.\\n💰 Government schemes & subsidies – Find support programs you qualify for.\\n\\n🚀 I’m here to make farming easier and help you get the best out of Anna Bazaar. What would you like to do today?\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\",\"IMAGE\"]},\"responseOptions\":{\"responseType\":\"PLAINTEXT\"}}",
                                                            responseType:
                                                                'PLAINTEXT',
                                                          ).then(
                                                              (generatedText) {
                                                            safeSetState(() =>
                                                                _model.aiOutput =
                                                                    generatedText);
                                                          });

                                                          await _model
                                                              .listViewController
                                                              ?.animateTo(
                                                            _model
                                                                .listViewController!
                                                                .position
                                                                .maxScrollExtent,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    100),
                                                            curve: Curves.ease,
                                                          );

                                                          await FarmerAiRecord
                                                                  .createDoc(
                                                                      bodyAnnaBuddyRecord
                                                                          .reference)
                                                              .set(
                                                                  createFarmerAiRecordData(
                                                            role: 'System',
                                                            messageText:
                                                                _model.aiOutput,
                                                            sentDataTime:
                                                                getCurrentTimestamp,
                                                            aiChatRef:
                                                                bodyAnnaBuddyRecord
                                                                    .reference,
                                                            image: _model
                                                                .uploadedFileUrl,
                                                          ));

                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.uploadedFileUrl != '')
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.12, 0.66),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 10),
                                          fadeOutDuration:
                                              Duration(milliseconds: 10),
                                          imageUrl: _model.uploadedFileUrl,
                                          width: 360.7,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
