import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key}) : super(key: key);

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  List<String>? checkboxGroupValues1;
  List<String>? checkboxGroupValues2;
  List<String>? checkboxGroupValues3;
  List<String>? checkboxGroupValues4;
  List<String>? checkboxGroupValues5;
  List<String>? checkboxGroupValues6;
  List<String>? checkboxGroupValues7;
  List<String>? checkboxGroupValues8;
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.chevron_left_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'list',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                      child: Text(
                        'Категории',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xD3101213),
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Text(
                        'Тип:',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues1 ??= [],
                      options: ['Спортивное'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues1 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues2 ??= [],
                      options: ['Творческое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues2 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues3 ??= [],
                      options: ['Экологическое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues3 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Text(
                        'Длительность:',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues4 ??= [],
                      options: ['Спортивное'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues4 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues5 ??= [],
                      options: ['Творческое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues5 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues6 ??= [],
                      options: ['Экологическое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues6 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Text(
                        'Расстояние:',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues7 ??= [],
                      options: ['Творческое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues7 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues8 ??= [],
                      options: ['Экологическое'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues8 = val),
                      activeColor: Color(0xFF414141),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.15),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 190, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('pageshop');
                    },
                    text: 'Выбрать',
                    options: FFButtonOptions(
                      width: 230,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
