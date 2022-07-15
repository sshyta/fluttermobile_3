import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'menu',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                  duration: Duration(milliseconds: 220),
                ),
              },
            );
          },
        ),
        title: Text(
          'Подборка',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(0.05, -0.95),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 25,
                borderWidth: 1,
                buttonSize: 50,
                icon: Icon(
                  Icons.search,
                  color: Color(0xB0101213),
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryColor,
                labelStyle: FlutterFlowTheme.of(context).bodyText1,
                indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                tabs: [
                  Tab(
                    text: 'Вакансии',
                  ),
                  Tab(
                    text: 'Мероприятия',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: SvgPicture.asset(
                            'assets/images/Group_270988564.svg',
                            width: 250,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Сейчас пока что пусто',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                        ),
                        Text(
                          'Давай настроим фильтры',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'dropdown',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Настроить',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
