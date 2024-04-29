import '/flutter_flow/flutter_flow_util.dart';
import 'tela_editar_dados_empresa_widget.dart'
    show TelaEditarDadosEmpresaWidget;
import 'package:flutter/material.dart';

class TelaEditarDadosEmpresaModel
    extends FlutterFlowModel<TelaEditarDadosEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input-dominio widget.
  FocusNode? inputDominioFocusNode;
  TextEditingController? inputDominioTextController;
  String? Function(BuildContext, String?)? inputDominioTextControllerValidator;
  // State field(s) for input-email widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  // State field(s) for input-senha widget.
  FocusNode? inputSenhaFocusNode;
  TextEditingController? inputSenhaTextController;
  late bool inputSenhaVisibility;
  String? Function(BuildContext, String?)? inputSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputDominioFocusNode?.dispose();
    inputDominioTextController?.dispose();

    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputSenhaFocusNode?.dispose();
    inputSenhaTextController?.dispose();
  }
}
