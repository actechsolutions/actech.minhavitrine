import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela_editar_produto_empresa_widget.dart'
    show TelaEditarProdutoEmpresaWidget;
import 'package:flutter/material.dart';

class TelaEditarProdutoEmpresaModel
    extends FlutterFlowModel<TelaEditarProdutoEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for inputNomeProduto widget.
  FocusNode? inputNomeProdutoFocusNode;
  TextEditingController? inputNomeProdutoTextController;
  String? Function(BuildContext, String?)?
      inputNomeProdutoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for inputDescricaoProduto widget.
  FocusNode? inputDescricaoProdutoFocusNode;
  TextEditingController? inputDescricaoProdutoTextController;
  String? Function(BuildContext, String?)?
      inputDescricaoProdutoTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for inputPreco widget.
  FocusNode? inputPrecoFocusNode;
  TextEditingController? inputPrecoTextController;
  String? Function(BuildContext, String?)? inputPrecoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputNomeProdutoFocusNode?.dispose();
    inputNomeProdutoTextController?.dispose();

    inputDescricaoProdutoFocusNode?.dispose();
    inputDescricaoProdutoTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    inputPrecoFocusNode?.dispose();
    inputPrecoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
