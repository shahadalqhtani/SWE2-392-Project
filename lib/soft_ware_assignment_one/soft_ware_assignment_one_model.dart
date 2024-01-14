import '/flutter_flow/flutter_flow_util.dart';
import 'soft_ware_assignment_one_widget.dart' show SoftWareAssignmentOneWidget;
import 'package:flutter/material.dart';

class SoftWareAssignmentOneModel
    extends FlutterFlowModel<SoftWareAssignmentOneWidget> {
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
