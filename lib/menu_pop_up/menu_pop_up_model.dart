import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'menu_pop_up_widget.dart' show MenuPopUpWidget;
import 'package:flutter/material.dart';

class MenuPopUpModel extends FlutterFlowModel<MenuPopUpWidget> {
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
