import '/flutter_flow/flutter_flow_util.dart';
import 'tela_detalhes_produto_clienteadd_widget.dart'
    show TelaDetalhesProdutoClienteaddWidget;
import 'package:flutter/material.dart';

class TelaDetalhesProdutoClienteaddModel
    extends FlutterFlowModel<TelaDetalhesProdutoClienteaddWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
