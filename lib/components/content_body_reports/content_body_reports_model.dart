import '/flutter_flow/flutter_flow_util.dart';
import 'content_body_reports_widget.dart' show ContentBodyReportsWidget;
import 'package:flutter/material.dart';

class ContentBodyReportsModel
    extends FlutterFlowModel<ContentBodyReportsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
