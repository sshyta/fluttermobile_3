import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageshopWidget extends StatefulWidget {
  const PageshopWidget({Key? key}) : super(key: key);

  @override
  _PageshopWidgetState createState() => _PageshopWidgetState();
}

class _PageshopWidgetState extends State<PageshopWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x00FFFFFF),
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<List<ItemsRecord>>(
            stream: queryItemsRecord(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<ItemsRecord> listViewItemsRecordList = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewItemsRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewItemsRecord =
                      listViewItemsRecordList[listViewIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 230),
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/Rectangle_3.png',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              listViewItemsRecord!.name!,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                listViewItemsRecord!.date!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xB7101213),
                                      fontSize: 15,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  listViewItemsRecord!.type!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xB8101213),
                                        fontSize: 15,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            listViewItemsRecord!.url!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
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
        ),
      ),
    );
  }
}
