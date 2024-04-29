import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_cadastro_empresa_widget.dart' show TelaCadastroEmpresaWidget;
import 'package:flutter/material.dart';

class TelaCadastroEmpresaModel
    extends FlutterFlowModel<TelaCadastroEmpresaWidget> {
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
  // Stores action output result for [Backend Call - API (signup)] action in Button widget.
  ApiCallResponse? apiResultue5;
  // Stores action output result for [Backend Call - API (BuscarUsuarioLogado)] action in Button widget.
  ApiCallResponse? apiResultdya;

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
