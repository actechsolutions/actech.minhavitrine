import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'tela_cadastro_dados_empresa_widget.dart'
    show TelaCadastroDadosEmpresaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaCadastroDadosEmpresaModel
    extends FlutterFlowModel<TelaCadastroDadosEmpresaWidget> {
  ///  Local state fields for this page.

  String? varlogradouro;

  String? varBairro;

  String? varCidade;

  String? varUF;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for input-nome-empresa widget.
  FocusNode? inputNomeEmpresaFocusNode;
  TextEditingController? inputNomeEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputNomeEmpresaTextControllerValidator;
  String? _inputNomeEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adicione o nome da empresa';
    }

    return null;
  }

  // State field(s) for input-CEP-empresa widget.
  FocusNode? inputCEPEmpresaFocusNode;
  TextEditingController? inputCEPEmpresaTextController;
  final inputCEPEmpresaMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      inputCEPEmpresaTextControllerValidator;
  String? _inputCEPEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adicione um CEP';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Via CEP)] action in IconButton widget.
  ApiCallResponse? respostaAPI;
  // State field(s) for input-cidade-empresa widget.
  FocusNode? inputCidadeEmpresaFocusNode;
  TextEditingController? inputCidadeEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputCidadeEmpresaTextControllerValidator;
  // State field(s) for input-UF-empresa widget.
  FocusNode? inputUFEmpresaFocusNode;
  TextEditingController? inputUFEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputUFEmpresaTextControllerValidator;
  // State field(s) for input-logradouro-empresa widget.
  FocusNode? inputLogradouroEmpresaFocusNode;
  TextEditingController? inputLogradouroEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputLogradouroEmpresaTextControllerValidator;
  // State field(s) for input-num-endereco-empresa widget.
  FocusNode? inputNumEnderecoEmpresaFocusNode;
  TextEditingController? inputNumEnderecoEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputNumEnderecoEmpresaTextControllerValidator;
  String? _inputNumEnderecoEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adicione um Número';
    }

    return null;
  }

  // State field(s) for input-bairro-empresa widget.
  FocusNode? inputBairroEmpresaFocusNode;
  TextEditingController? inputBairroEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputBairroEmpresaTextControllerValidator;
  // State field(s) for input-complemento-empresa widget.
  FocusNode? inputComplementoEmpresaFocusNode;
  TextEditingController? inputComplementoEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputComplementoEmpresaTextControllerValidator;
  // State field(s) for input-descricao-empresa widget.
  FocusNode? inputDescricaoEmpresaFocusNode;
  TextEditingController? inputDescricaoEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputDescricaoEmpresaTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Stores action output result for [Backend Call - API (cadastroEmpresa)] action in Button widget.
  ApiCallResponse? apiResultm4z;
  // Model for popUpMenuEmpresa component.
  late PopUpMenuEmpresaModel popUpMenuEmpresaModel;

  @override
  void initState(BuildContext context) {
    inputNomeEmpresaTextControllerValidator =
        _inputNomeEmpresaTextControllerValidator;
    inputCEPEmpresaTextControllerValidator =
        _inputCEPEmpresaTextControllerValidator;
    inputNumEnderecoEmpresaTextControllerValidator =
        _inputNumEnderecoEmpresaTextControllerValidator;
    popUpMenuEmpresaModel = createModel(context, () => PopUpMenuEmpresaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputNomeEmpresaFocusNode?.dispose();
    inputNomeEmpresaTextController?.dispose();

    inputCEPEmpresaFocusNode?.dispose();
    inputCEPEmpresaTextController?.dispose();

    inputCidadeEmpresaFocusNode?.dispose();
    inputCidadeEmpresaTextController?.dispose();

    inputUFEmpresaFocusNode?.dispose();
    inputUFEmpresaTextController?.dispose();

    inputLogradouroEmpresaFocusNode?.dispose();
    inputLogradouroEmpresaTextController?.dispose();

    inputNumEnderecoEmpresaFocusNode?.dispose();
    inputNumEnderecoEmpresaTextController?.dispose();

    inputBairroEmpresaFocusNode?.dispose();
    inputBairroEmpresaTextController?.dispose();

    inputComplementoEmpresaFocusNode?.dispose();
    inputComplementoEmpresaTextController?.dispose();

    inputDescricaoEmpresaFocusNode?.dispose();
    inputDescricaoEmpresaTextController?.dispose();

    popUpMenuEmpresaModel.dispose();
  }
}
