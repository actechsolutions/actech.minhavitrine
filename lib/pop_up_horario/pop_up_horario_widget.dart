import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_empresa/horario_pop_up/horario_pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'pop_up_horario_model.dart';
export 'pop_up_horario_model.dart';

class PopUpHorarioWidget extends StatefulWidget {
  const PopUpHorarioWidget({super.key});

  @override
  State<PopUpHorarioWidget> createState() => _PopUpHorarioWidgetState();
}

class _PopUpHorarioWidgetState extends State<PopUpHorarioWidget> {
  late PopUpHorarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpHorarioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: wrapWithModel(
            model: _model.horarioPopUpModel,
            updateCallback: () => setState(() {}),
            child: const HorarioPopUpWidget(),
          ),
        ),
      ),
    );
  }
}
