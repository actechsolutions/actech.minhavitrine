import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'horario_pop_up_widget.dart' show HorarioPopUpWidget;
import 'package:flutter/material.dart';

class HorarioPopUpModel extends FlutterFlowModel<HorarioPopUpWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown_horaAbertura widget.
  String? dropDownHoraAberturaValue;
  FormFieldController<String>? dropDownHoraAberturaValueController;
  // State field(s) for DropDown_minutoFechamento widget.
  String? dropDownMinutoFechamentoValue;
  FormFieldController<String>? dropDownMinutoFechamentoValueController;
  // State field(s) for DropDown_horaFimPausa widget.
  String? dropDownHoraFimPausaValue;
  FormFieldController<String>? dropDownHoraFimPausaValueController;
  // State field(s) for DropDown_minutoAbertura widget.
  String? dropDownMinutoAberturaValue;
  FormFieldController<String>? dropDownMinutoAberturaValueController;
  // State field(s) for DropDown_horaEncerramento widget.
  String? dropDownHoraEncerramentoValue;
  FormFieldController<String>? dropDownHoraEncerramentoValueController;
  // State field(s) for DropDown_horaInicioPausa widget.
  String? dropDownHoraInicioPausaValue;
  FormFieldController<String>? dropDownHoraInicioPausaValueController;
  // State field(s) for DropDown_minutoFimPausa widget.
  String? dropDownMinutoFimPausaValue;
  FormFieldController<String>? dropDownMinutoFimPausaValueController;
  // State field(s) for DropDown_minutoInicioPausa widget.
  String? dropDownMinutoInicioPausaValue;
  FormFieldController<String>? dropDownMinutoInicioPausaValueController;
  // Stores action output result for [Backend Call - API (HorarioFuncionamentoPut)] action in botaoSalvarHorario widget.
  ApiCallResponse? apiResultbs0;
  // Stores action output result for [Backend Call - API (cadastrarHorario)] action in botaoSalvarHorario widget.
  ApiCallResponse? apiResultoxe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
