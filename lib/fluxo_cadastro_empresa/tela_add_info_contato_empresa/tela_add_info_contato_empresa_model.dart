import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_add_info_contato_empresa_widget.dart'
    show TelaAddInfoContatoEmpresaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaAddInfoContatoEmpresaModel
    extends FlutterFlowModel<TelaAddInfoContatoEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (BuscarHorarioEmpresaPorLote)] action in tela_add_info_contato_empresa widget.
  ApiCallResponse? apiResultrnr;
  // State field(s) for input-email-empresa widget.
  FocusNode? inputEmailEmpresaFocusNode;
  TextEditingController? inputEmailEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputEmailEmpresaTextControllerValidator;
  String? _inputEmailEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adicionar email';
    }

    return null;
  }

  // State field(s) for input-tel-whats-empresa widget.
  FocusNode? inputTelWhatsEmpresaFocusNode;
  TextEditingController? inputTelWhatsEmpresaTextController;
  final inputTelWhatsEmpresaMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      inputTelWhatsEmpresaTextControllerValidator;
  String? _inputTelWhatsEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adicione um telefone';
    }

    return null;
  }

  // State field(s) for input-instagram-empresa widget.
  FocusNode? inputInstagramEmpresaFocusNode;
  TextEditingController? inputInstagramEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputInstagramEmpresaTextControllerValidator;
  // State field(s) for input-facebook-empresa widget.
  FocusNode? inputFacebookEmpresaFocusNode;
  TextEditingController? inputFacebookEmpresaTextController;
  String? Function(BuildContext, String?)?
      inputFacebookEmpresaTextControllerValidator;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Domingo widget.
  ApiCallResponse? horarioFuncionamentoGet;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Segunda-feira widget.
  ApiCallResponse? horarioFuncionamentoGetSegunda;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Terca-feira widget.
  ApiCallResponse? horarioFuncionamentoGetTerca;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Quarta-feira widget.
  ApiCallResponse? horarioFuncionamentoGetQuarta;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Quinta-feira widget.
  ApiCallResponse? horarioFuncionamentoGetQuinta;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Sexta-feira widget.
  ApiCallResponse? horarioFuncionamentoGetSexta;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoGet)] action in Sabado widget.
  ApiCallResponse? horarioFuncionamentoGetSabado;

  @override
  void initState(BuildContext context) {
    inputEmailEmpresaTextControllerValidator =
        _inputEmailEmpresaTextControllerValidator;
    inputTelWhatsEmpresaTextControllerValidator =
        _inputTelWhatsEmpresaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputEmailEmpresaFocusNode?.dispose();
    inputEmailEmpresaTextController?.dispose();

    inputTelWhatsEmpresaFocusNode?.dispose();
    inputTelWhatsEmpresaTextController?.dispose();

    inputInstagramEmpresaFocusNode?.dispose();
    inputInstagramEmpresaTextController?.dispose();

    inputFacebookEmpresaFocusNode?.dispose();
    inputFacebookEmpresaTextController?.dispose();
  }
}
