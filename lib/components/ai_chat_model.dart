import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_chat_widget.dart' show AiChatWidget;
import 'package:flutter/material.dart';

class AiChatModel extends FlutterFlowModel<AiChatWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getConversation)] action in ai_chat widget.
  ApiCallResponse? apiResultgj4;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (addMessage)] action in IconButton widget.
  ApiCallResponse? apiResult7ke;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
