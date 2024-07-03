import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  Local state fields for this page.

  String name = ' ';

  double? price;

  String about = ' ';

  String image = ' ';

  String category = ' ';

  double? rating;

  int? ratingCount;

  bool isLiked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProductByID)] action in ProductDetail widget.
  ApiCallResponse? apiResult0g7;
  // Stores action output result for [Firestore Query - Query a collection] action in ProductDetail widget.
  SavedProductRecord? doc;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Firestore Query - Query a collection] action in addfavourites widget.
  SavedProductRecord? docc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
