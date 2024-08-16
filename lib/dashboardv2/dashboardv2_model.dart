import '/components/ai_chat_actions_widget.dart';
import '/components/ai_chat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboardv2_widget.dart' show Dashboardv2Widget;
import 'package:flutter/material.dart';

class Dashboardv2Model extends FlutterFlowModel<Dashboardv2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for ai_chat component.
  late AiChatModel aiChatModel;
  // Model for ai_chat_actions component.
  late AiChatActionsModel aiChatActionsModel;

  @override
  void initState(BuildContext context) {
    aiChatModel = createModel(context, () => AiChatModel());
    aiChatActionsModel = createModel(context, () => AiChatActionsModel());
  }

  @override
  void dispose() {
    aiChatModel.dispose();
    aiChatActionsModel.dispose();
  }
}
