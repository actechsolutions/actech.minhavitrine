import '/flutter_flow/flutter_flow_util.dart';
import 'tela_recuperar_senha_widget.dart' show TelaRecuperarSenhaWidget;
import 'package:flutter/material.dart';

class TelaRecuperarSenhaModel
    extends FlutterFlowModel<TelaRecuperarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input-email widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();
  }
}
