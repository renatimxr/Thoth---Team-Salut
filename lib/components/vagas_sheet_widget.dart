import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vagas_sheet_model.dart';
export 'vagas_sheet_model.dart';

class VagasSheetWidget extends StatefulWidget {
  const VagasSheetWidget({
    super.key,
    this.companyName,
    this.companyLogo,
    this.jobTitle,
    this.jobDescription,
  });

  final String? companyName;
  final String? companyLogo;
  final String? jobTitle;
  final String? jobDescription;

  @override
  State<VagasSheetWidget> createState() => _VagasSheetWidgetState();
}

class _VagasSheetWidgetState extends State<VagasSheetWidget> {
  late VagasSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VagasSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 0.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        FFIcons.kdeleteDisabled2,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(42.0, 16.0, 16.0, 16.0),
                  child: Container(
                    width: 64.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.network(
                          widget.companyLogo!,
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 42.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.companyName,
                          'companyName',
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.jobTitle,
                          'Job',
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              indent: 42.0,
              endIndent: 42.0,
              color: Color(0x1A2A3D50),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(42.0, 8.0, 42.0, 0.0),
              child: Text(
                'Descrição do Plantão',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(42.0, 12.0, 42.0, 12.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.jobDescription,
                        'Texto descritivo da vaga',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.3,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(42.0, 16.0, 42.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.ktimeClock,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '6h',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kcasinoChips,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'R\$ 1200',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(42.0, 32.0, 42.0, 16.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Candidatar-se a esse plantão',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF58D7AD),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
