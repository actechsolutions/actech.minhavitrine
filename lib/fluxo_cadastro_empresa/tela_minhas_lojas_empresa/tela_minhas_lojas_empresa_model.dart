import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'tela_minhas_lojas_empresa_widget.dart'
    show TelaMinhasLojasEmpresaWidget;
import 'package:flutter/material.dart';

class TelaMinhasLojasEmpresaModel
    extends FlutterFlowModel<TelaMinhasLojasEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for popUpMenuEmpresa component.
  late PopUpMenuEmpresaModel popUpMenuEmpresaModel;

  @override
  void initState(BuildContext context) {
    popUpMenuEmpresaModel = createModel(context, () => PopUpMenuEmpresaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpMenuEmpresaModel.dispose();
  }
}
