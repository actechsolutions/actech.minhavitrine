import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pop_up_repetir_horarios_model.dart';
export 'pop_up_repetir_horarios_model.dart';

class PopUpRepetirHorariosWidget extends StatefulWidget {
  const PopUpRepetirHorariosWidget({super.key});

  @override
  State<PopUpRepetirHorariosWidget> createState() =>
      _PopUpRepetirHorariosWidgetState();
}

class _PopUpRepetirHorariosWidgetState
    extends State<PopUpRepetirHorariosWidget> {
  late PopUpRepetirHorariosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopUpRepetirHorariosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 250.0,
        height: 144.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
              child: Text(
                'Repetir Horários',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'Deseja repetir esses horários nos outros dias da semana?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                _model.apiResultfe7 = await APIMinhaVitrineGroup
                    .cadastrarHorarioEmpresaEmLoteCall
                    .call(
                  authToken: currentAuthenticationToken,
                  horarioEntrada: FFAppState().horarioEntrada,
                  horarioSaida: FFAppState().horarioSaida,
                  almocoEntrada: FFAppState().entradaAlmoco,
                  almocoSaida: FFAppState().saidaAlmoco,
                );
                if ((_model.apiResultfe7?.succeeded ?? true)) {
                  context.pushNamed('tela_add_info_contato_empresa');
                }

                setState(() {});
              },
              text: 'Repetir',
              options: FFButtonOptions(
                width: 100.0,
                height: 27.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xCD023C51),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.apiResultopa = await CadastrarHorarioCall.call(
                    authToken: currentAuthenticationToken,
                    horarioEntrada: FFAppState().horarioEntrada,
                    horarioSaida: FFAppState().horarioSaida,
                    entradaAlmoco: FFAppState().entradaAlmoco,
                    saidaAlmoco: FFAppState().saidaAlmoco,
                    diaDaSemana: FFAppState().diaDaSemanaVariable,
                  );
                  if ((_model.apiResultopa?.succeeded ?? true)) {
                    context.pushNamed('tela_add_info_contato_empresa');
                  } else {
                    context.pushNamed('tela_add_info_contato_empresa');
                  }

                  setState(() {});
                },
                child: Text(
                  'Cancelar',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
