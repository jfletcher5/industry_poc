import '/flutter_flow/flutter_flow_util.dart';
import 'ai_chat_widget.dart' show AiChatWidget;
import 'package:flutter/material.dart';

class AiChatModel extends FlutterFlowModel<AiChatWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
