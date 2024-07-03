import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/all_product_card_widget.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'home_widget.dart' show HomeWidget;
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<String> names = [];
  void addToNames(String item) => names.add(item);
  void removeFromNames(String item) => names.remove(item);
  void removeAtIndexFromNames(int index) => names.removeAt(index);
  void insertAtIndexInNames(int index, String item) =>
      names.insert(index, item);
  void updateNamesAtIndex(int index, Function(String) updateFn) =>
      names[index] = updateFn(names[index]);

  List<String> images = [];
  void addToImages(String item) => images.add(item);
  void removeFromImages(String item) => images.remove(item);
  void removeAtIndexFromImages(int index) => images.removeAt(index);
  void insertAtIndexInImages(int index, String item) =>
      images.insert(index, item);
  void updateImagesAtIndex(int index, Function(String) updateFn) =>
      images[index] = updateFn(images[index]);

  List<String> category = [];
  void addToCategory(String item) => category.add(item);
  void removeFromCategory(String item) => category.remove(item);
  void removeAtIndexFromCategory(int index) => category.removeAt(index);
  void insertAtIndexInCategory(int index, String item) =>
      category.insert(index, item);
  void updateCategoryAtIndex(int index, Function(String) updateFn) =>
      category[index] = updateFn(category[index]);

  List<int> id = [];
  void addToId(int item) => id.add(item);
  void removeFromId(int item) => id.remove(item);
  void removeAtIndexFromId(int index) => id.removeAt(index);
  void insertAtIndexInId(int index, int item) => id.insert(index, item);
  void updateIdAtIndex(int index, Function(int) updateFn) =>
      id[index] = updateFn(id[index]);

  List<double> price = [];
  void addToPrice(double item) => price.add(item);
  void removeFromPrice(double item) => price.remove(item);
  void removeAtIndexFromPrice(int index) => price.removeAt(index);
  void insertAtIndexInPrice(int index, double item) =>
      price.insert(index, item);
  void updatePriceAtIndex(int index, Function(double) updateFn) =>
      price[index] = updateFn(price[index]);

  bool isLoadingcategories = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
