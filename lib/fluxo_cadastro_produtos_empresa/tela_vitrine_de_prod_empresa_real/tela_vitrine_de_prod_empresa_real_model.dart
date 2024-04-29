import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'tela_vitrine_de_prod_empresa_real_widget.dart'
    show TelaVitrineDeProdEmpresaRealWidget;
import 'package:flutter/material.dart';

class TelaVitrineDeProdEmpresaRealModel
    extends FlutterFlowModel<TelaVitrineDeProdEmpresaRealWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for popUpMenuEmpresa component.
  late PopUpMenuEmpresaModel popUpMenuEmpresaModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

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
