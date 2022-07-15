import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrantActivityWidget extends StatefulWidget {
  const GrantActivityWidget({Key? key}) : super(key: key);

  @override
  _GrantActivityWidgetState createState() => _GrantActivityWidgetState();
}

class _GrantActivityWidgetState extends State<GrantActivityWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Text(
                      'Гранты',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(210, 0, 0, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.search_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryColor,
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Фонды',
                          ),
                          Tab(
                            text: 'Команды',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            StreamBuilder<List<FondsRecord>>(
                              stream: queryFondsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<FondsRecord> listViewFondsRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewFondsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewFondsRecord =
                                        listViewFondsRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.95,
                                              height: 250,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFDDDDDD),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.9, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            listViewFondsRecord!
                                                                .group!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(140,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            listViewFondsRecord!
                                                                .date!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15,
                                                                    10, 0, 0),
                                                        child: Text(
                                                          listViewFondsRecord!
                                                              .name!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15,
                                                                    10, 0, 0),
                                                        child: Text(
                                                          listViewFondsRecord!
                                                              .descript!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      50, 0, 0),
                                                          child: ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              final fondsUpdateData =
                                                                  createFondsRecordData(
                                                                truee:
                                                                    !listViewFondsRecord!
                                                                        .truee!,
                                                              );
                                                              await listViewFondsRecord!
                                                                  .reference
                                                                  .update(
                                                                      fondsUpdateData);
                                                            },
                                                            value:
                                                                listViewFondsRecord!
                                                                    .truee!,
                                                            onIcon: Icon(
                                                              Icons.favorite,
                                                              color: Color(
                                                                  0xFFFF4545),
                                                              size: 40,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color:
                                                                  Colors.black,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(130,
                                                                      60, 0, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Перейти',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130,
                                                              height: 40,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            StreamBuilder<List<GroupsRecord>>(
                              stream: queryGroupsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<GroupsRecord> listViewGroupsRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewGroupsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewGroupsRecord =
                                        listViewGroupsRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EEEEEE),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.95,
                                              height: 250,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFDDDDDD),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.9, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            listViewGroupsRecord!
                                                                .name!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(140,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            listViewGroupsRecord!
                                                                .date!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15,
                                                                    10, 0, 0),
                                                        child: Text(
                                                          listViewGroupsRecord!
                                                              .title!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(15,
                                                                    10, 0, 0),
                                                        child: Text(
                                                          listViewGroupsRecord!
                                                              .description!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      50, 0, 0),
                                                          child: ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              final groupsUpdateData =
                                                                  createGroupsRecordData(
                                                                like:
                                                                    !listViewGroupsRecord!
                                                                        .like!,
                                                              );
                                                              await listViewGroupsRecord!
                                                                  .reference
                                                                  .update(
                                                                      groupsUpdateData);
                                                            },
                                                            value:
                                                                listViewGroupsRecord!
                                                                    .like!,
                                                            onIcon: Icon(
                                                              Icons.favorite,
                                                              color: Color(
                                                                  0xFFFF4545),
                                                              size: 40,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .favorite_border,
                                                              color:
                                                                  Colors.black,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(130,
                                                                      60, 0, 0),
                                                          child: FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: 'Перейти',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130,
                                                              height: 40,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
