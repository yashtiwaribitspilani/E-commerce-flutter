import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_model.dart';
export 'product_card_model.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.id,
  });

  final dynamic parameter1;
  final dynamic parameter2;
  final dynamic parameter3;
  final dynamic parameter4;
  final int? id;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  late ProductCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.doc = await querySavedProductRecordOnce(
        queryBuilder: (savedProductRecord) => savedProductRecord
            .where(
              'useref',
              isEqualTo: currentUserReference,
            )
            .where(
              'id',
              isEqualTo: widget.id,
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.doc?.reference != null) {
        _model.isLiked = true;
        setState(() {});
      } else {
        _model.isLiked = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160.0,
          height: 305.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
        Container(
          width: 145.0,
          height: 285.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  5.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'ProductDetail',
                    queryParameters: {
                      'productId': serializeParam(
                        widget.id,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                      ),
                    },
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(7.0, 7.0, 7.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              widget.parameter1!.toString(),
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.parameter2!.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.parameter3!.toString().maybeHandleOverflow(
                              maxChars: 20,
                              replacement: '…',
                            ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 8.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '\$',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Text(
                          widget.parameter4!.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  if (!_model.isLiked)
                    Align(
                      alignment: AlignmentDirectional(1.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 7.0, 7.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 35.0,
                          borderWidth: 1.0,
                          buttonSize: 30.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.favorite_border,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 15.0,
                          ),
                          onPressed: () async {
                            _model.isLiked = true;
                            setState(() {});

                            await SavedProductRecord.collection
                                .doc()
                                .set(createSavedProductRecordData(
                                  name: widget.parameter2?.toString(),
                                  price: widget.parameter4,
                                  image: widget.parameter1?.toString(),
                                  id: widget.id,
                                  category: widget.parameter3?.toString(),
                                  useref: currentUserReference,
                                ));
                          },
                        ),
                      ),
                    ),
                  if (_model.isLiked)
                    Align(
                      alignment: AlignmentDirectional(1.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 7.0, 7.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 35.0,
                          borderWidth: 1.0,
                          buttonSize: 30.0,
                          fillColor: Color(0xFFCFC2B7),
                          icon: Icon(
                            Icons.favorite_sharp,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 15.0,
                          ),
                          onPressed: () async {
                            _model.isLiked = false;
                            setState(() {});
                            _model.docc = await querySavedProductRecordOnce(
                              queryBuilder: (savedProductRecord) =>
                                  savedProductRecord
                                      .where(
                                        'useref',
                                        isEqualTo: currentUserReference,
                                      )
                                      .where(
                                        'id',
                                        isEqualTo: widget.id,
                                      ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            await _model.docc!.reference.delete();

                            setState(() {});
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
