import '/flutter_flow/flutter_flow_util.dart';
import 'password_edit_widget.dart' show PasswordEditWidget;
import 'package:flutter/material.dart';

class PasswordEditModel extends FlutterFlowModel<PasswordEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailController?.dispose();
  }
}
