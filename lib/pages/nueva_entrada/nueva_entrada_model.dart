import '/flutter_flow/flutter_flow_util.dart';
import 'nueva_entrada_widget.dart' show NuevaEntradaWidget;
import 'package:flutter/material.dart';

class NuevaEntradaModel extends FlutterFlowModel<NuevaEntradaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }
}
