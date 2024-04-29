import '/flutter_flow/flutter_flow_util.dart';
import 'tela_resumo_pedido_sem_endereco_widget.dart'
    show TelaResumoPedidoSemEnderecoWidget;
import 'package:flutter/material.dart';

class TelaResumoPedidoSemEnderecoModel
    extends FlutterFlowModel<TelaResumoPedidoSemEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
