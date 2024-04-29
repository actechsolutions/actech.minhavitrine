import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela_add_categoria_empresa_widget.dart'
    show TelaAddCategoriaEmpresaWidget;
import 'package:flutter/material.dart';

class TelaAddCategoriaEmpresaModel
    extends FlutterFlowModel<TelaAddCategoriaEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for inputNomeCategoria widget.
  FocusNode? inputNomeCategoriaFocusNode;
  TextEditingController? inputNomeCategoriaTextController;
  String? Function(BuildContext, String?)?
      inputNomeCategoriaTextControllerValidator;
  String? _inputNomeCategoriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '*Adicione o nome da categoria';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (BuscarCategoriaPorNome)] action in Button-salvar widget.
  ApiCallResponse? buscarCategoriaPorNome;
  // Stores action output result for [Backend Call - API (AtualizarCategoriaPorId)] action in Button-salvar widget.
  ApiCallResponse? apiResultdAtualizarCategoria;
  // Stores action output result for [Backend Call - API (CadastrarCategoria)] action in Button-salvar widget.
  ApiCallResponse? apiResultCadastrarCategoria;
  // State field(s) for DropDown_categoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // Stores action output result for [Backend Call - API (DeleteCategoriaPorNome)] action in Text widget.
  ApiCallResponse? apiResultg99;

  @override
  void initState(BuildContext context) {
    inputNomeCategoriaTextControllerValidator =
        _inputNomeCategoriaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputNomeCategoriaFocusNode?.dispose();
    inputNomeCategoriaTextController?.dispose();
  }
}
