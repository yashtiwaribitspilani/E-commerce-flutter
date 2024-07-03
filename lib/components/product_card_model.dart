import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_card_widget.dart' show ProductCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductCardModel extends FlutterFlowModel<ProductCardWidget> {
  ///  Local state fields for this component.

  bool isLiked = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in product_card widget.
  SavedProductRecord? doc;
  // Stores action output result for [Firestore Query - Query a collection] action in addToCartButton widget.
  SavedProductRecord? docc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
