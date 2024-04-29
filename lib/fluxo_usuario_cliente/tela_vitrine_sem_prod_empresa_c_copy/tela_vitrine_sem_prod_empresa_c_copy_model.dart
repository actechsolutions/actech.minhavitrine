import '/components/categoria_choices_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'tela_vitrine_sem_prod_empresa_c_copy_widget.dart'
    show TelaVitrineSemProdEmpresaCCopyWidget;
import 'package:flutter/material.dart';

class TelaVitrineSemProdEmpresaCCopyModel
    extends FlutterFlowModel<TelaVitrineSemProdEmpresaCCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for popUpMenuEmpresa component.
  late PopUpMenuEmpresaModel popUpMenuEmpresaModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for categoriaChoices component.
  late CategoriaChoicesModel categoriaChoicesModel;

  @override
  void initState(BuildContext context) {
    popUpMenuEmpresaModel = createModel(context, () => PopUpMenuEmpresaModel());
    categoriaChoicesModel = createModel(context, () => CategoriaChoicesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    popUpMenuEmpresaModel.dispose();
    categoriaChoicesModel.dispose();
  }
}
