import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_order_widget.dart' show ModalCreateOrderWidget;
import 'package:flutter/material.dart';

class ModalCreateOrderModel extends FlutterFlowModel<ModalCreateOrderWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for order_type widget.
  String? orderTypeValue;
  FormFieldController<String>? orderTypeValueController;
  // State field(s) for customer_name widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameTextController;
  String? Function(BuildContext, String?)? customerNameTextControllerValidator;
  // State field(s) for customer_contact widget.
  FocusNode? customerContactFocusNode;
  TextEditingController? customerContactTextController;
  String? Function(BuildContext, String?)?
      customerContactTextControllerValidator;
  // State field(s) for order_amount widget.
  FocusNode? orderAmountFocusNode;
  TextEditingController? orderAmountTextController;
  String? Function(BuildContext, String?)? orderAmountTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? createOrder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customerNameFocusNode?.dispose();
    customerNameTextController?.dispose();

    customerContactFocusNode?.dispose();
    customerContactTextController?.dispose();

    orderAmountFocusNode?.dispose();
    orderAmountTextController?.dispose();
  }
}
