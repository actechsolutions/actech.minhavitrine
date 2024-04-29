import '/flutter_flow/flutter_flow_util.dart';
import 'tela_configuracoes_empresa_widget.dart'
    show TelaConfiguracoesEmpresaWidget;
import 'package:flutter/material.dart';

class TelaConfiguracoesEmpresaModel
    extends FlutterFlowModel<TelaConfiguracoesEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
