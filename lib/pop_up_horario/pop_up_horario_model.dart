import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_empresa/horario_pop_up/horario_pop_up_widget.dart';
import 'pop_up_horario_widget.dart' show PopUpHorarioWidget;
import 'package:flutter/material.dart';

class PopUpHorarioModel extends FlutterFlowModel<PopUpHorarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for horarioPopUp component.
  late HorarioPopUpModel horarioPopUpModel;

  @override
  void initState(BuildContext context) {
    horarioPopUpModel = createModel(context, () => HorarioPopUpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    horarioPopUpModel.dispose();
  }
}
