import '/flutter_flow/flutter_flow_util.dart';
import 'java2_assignment_one_widget.dart' show Java2AssignmentOneWidget;
import 'package:flutter/material.dart';

class Java2AssignmentOneModel
    extends FlutterFlowModel<Java2AssignmentOneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
