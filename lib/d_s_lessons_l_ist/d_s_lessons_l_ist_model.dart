import '/flutter_flow/flutter_flow_util.dart';
import 'd_s_lessons_l_ist_widget.dart' show DSLessonsLIstWidget;
import 'package:flutter/material.dart';

class DSLessonsLIstModel extends FlutterFlowModel<DSLessonsLIstWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarController;
  String? Function(BuildContext, String?)? searchBarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
