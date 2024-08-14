import '/components/ai_chat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ai_chat component.
  late AiChatModel aiChatModel;

  @override
  void initState(BuildContext context) {
    aiChatModel = createModel(context, () => AiChatModel());
  }

  @override
  void dispose() {
    aiChatModel.dispose();
  }
}
