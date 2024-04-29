import '/flutter_flow/flutter_flow_util.dart';
import 'tela_recuperacao_de_senha2_widget.dart'
    show TelaRecuperacaoDeSenha2Widget;
import 'package:flutter/material.dart';

class TelaRecuperacaoDeSenha2Model
    extends FlutterFlowModel<TelaRecuperacaoDeSenha2Widget> {
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
