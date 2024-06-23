import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'article_details_model.dart';
export 'article_details_model.dart';

class ArticleDetailsWidget extends StatefulWidget {
  const ArticleDetailsWidget({
    super.key,
    required this.articleTitle,
    required this.articleImage,
    required this.articleCategory,
    this.articleContent,
  });

  final String? articleTitle;
  final String? articleImage;
  final String? articleCategory;
  final String? articleContent;

  @override
  State<ArticleDetailsWidget> createState() => _ArticleDetailsWidgetState();
}

class _ArticleDetailsWidgetState extends State<ArticleDetailsWidget> {
  late ArticleDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticleDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFF3F4F7),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.kleft,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network(
                    widget.articleImage!,
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.articleCategory,
                      'category',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.articleTitle,
                      'Title',
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Divider(
                  height: 32.0,
                  thickness: 0.5,
                  indent: 16.0,
                  endIndent: 16.0,
                  color: Color(0x192A3D50),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.articleContent,
                      'content',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].addToEnd(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
