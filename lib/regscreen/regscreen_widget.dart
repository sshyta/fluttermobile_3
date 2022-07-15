import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegscreenWidget extends StatefulWidget {
  const RegscreenWidget({Key? key}) : super(key: key);

  @override
  _RegscreenWidgetState createState() => _RegscreenWidgetState();
}

class _RegscreenWidgetState extends State<RegscreenWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  late bool passwordVisibility1;
  TextEditingController? textController5;
  late bool passwordVisibility2;
  TextEditingController? textController6;
  late bool passwordVisibility3;
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    passwordVisibility1 = false;
    textController5 = TextEditingController();
    passwordVisibility2 = false;
    textController6 = TextEditingController();
    passwordVisibility3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.85, -0.8),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(-0.3, 0.05),
                    child: SvgPicture.asset(
                      'assets/images/Group_270988554.svg',
                      width: 200,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.05),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Text(
                          'Регистрация',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Text(
                        'ФИО',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'ФИО',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Дата рождения',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '01.01.2022',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Телефон',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController3,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '+7 (999) 999-99-99',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Email',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController4,
                            autofocus: true,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 =
                                      !passwordVisibility1,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility1
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Пароль*',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController5,
                            autofocus: true,
                            obscureText: !passwordVisibility2,
                            decoration: InputDecoration(
                              hintText: 'Придумайте пароль',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility2 =
                                      !passwordVisibility2,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Пароль*',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: TextFormField(
                            controller: textController6,
                            autofocus: true,
                            obscureText: !passwordVisibility3,
                            decoration: InputDecoration(
                              hintText: 'Повторите пароль',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xCA2A2A2A),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility3 =
                                      !passwordVisibility3,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility3
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 150,
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0.05, -0.1),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Align(
                                alignment: AlignmentDirectional(0, 0.05),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 10, 0, 0),
                                  child: SwitchListTile(
                                    value: switchListTileValue1 ??= true,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue1 = newValue),
                                    title: Text(
                                      'Принимаю условия Пользовательского соглашения и Политики конфиденциальности',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor: Colors.white,
                                    activeTrackColor: Color(0xFFEE5203),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Align(
                                alignment: AlignmentDirectional(0, -0.05),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 0, 0, 0),
                                  child: SwitchListTile(
                                    value: switchListTileValue2 ??= true,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue2 = newValue),
                                    title: Text(
                                      'Я хочу получать рассылки и уведомления',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor: Colors.white,
                                    activeTrackColor: Color(0xFFEE5203),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                  ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('news');
                  },
                  text: 'Войти',
                  options: FFButtonOptions(
                    width: 100,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        ),
      ),
    );
  }
}
