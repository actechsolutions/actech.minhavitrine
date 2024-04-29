import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/fluxo_cadastro_empresa/pop_up_repetir_horarios/pop_up_repetir_horarios_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'horario_pop_up_model.dart';
export 'horario_pop_up_model.dart';

class HorarioPopUpWidget extends StatefulWidget {
  const HorarioPopUpWidget({super.key});

  @override
  State<HorarioPopUpWidget> createState() => _HorarioPopUpWidgetState();
}

class _HorarioPopUpWidgetState extends State<HorarioPopUpWidget> {
  late HorarioPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HorarioPopUpModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: SizedBox(
            width: 372.0,
            height: 631.0,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 300.0,
                    height: 309.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                FFAppState().diaDaSemanaVariable,
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.7),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Text(
                                'Horário de abertura',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.17),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 15.0),
                              child: Text(
                                'Horário de encerramento',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.57, -0.48),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.dropDownHoraAberturaValueController ??=
                                      FormFieldController<String>(
                                _model.dropDownHoraAberturaValue ??=
                                    FFAppState().horaEntradaHora != ''
                                        ? FFAppState().horaEntradaHora
                                        : '00h',
                              ),
                              options: const [
                                '00h',
                                '01h',
                                '02h',
                                '03h',
                                '04h',
                                '05h',
                                '06h',
                                '07h',
                                '08h',
                                '09h',
                                '10h',
                                '11h',
                                '12h',
                                '13h',
                                '14h',
                                '15h',
                                '16h',
                                '17h',
                                '18h',
                                '19h',
                                '20h',
                                '21h',
                                '22h',
                                '23h'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dropDownHoraAberturaValue = val),
                              width: 99.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00H',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.56, 0.08),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownMinutoFechamentoValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownMinutoFechamentoValue ??=
                                    FFAppState().horaSaidaMinuto != ''
                                        ? FFAppState().horaSaidaMinuto
                                        : '00',
                              ),
                              options: const [
                                '00',
                                '01',
                                '02',
                                '03',
                                '04',
                                '05',
                                '06',
                                '07',
                                '08',
                                '09',
                                '10',
                                '11',
                                '12',
                                '13',
                                '14',
                                '15',
                                '16',
                                '17',
                                '18',
                                '19',
                                '20',
                                '21',
                                '22',
                                '23',
                                '24',
                                '25',
                                '26',
                                '27',
                                '28',
                                '29',
                                '30',
                                '31',
                                '32',
                                '33',
                                '34',
                                '35',
                                '36',
                                '37',
                                '38',
                                '39',
                                '40',
                                '41',
                                '42',
                                '43',
                                '44',
                                '45',
                                '46',
                                '47',
                                '48',
                                '49',
                                '50',
                                '51',
                                '52',
                                '53',
                                '54',
                                '55',
                                '56',
                                '57',
                                '58',
                                '59'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownMinutoFechamentoValue = val),
                              width: 99.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -0.47),
                            child: Text(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.16, 0.92),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.dropDownHoraFimPausaValueController ??=
                                      FormFieldController<String>(
                                _model.dropDownHoraFimPausaValue ??=
                                    FFAppState().horaPausaFimHora != ''
                                        ? FFAppState().horaPausaFimHora
                                        : '00h',
                              ),
                              options: const [
                                '00h',
                                '01h',
                                '02h',
                                '03h',
                                '04h',
                                '05h',
                                '06h',
                                '07h',
                                '08h',
                                '09h',
                                '10h',
                                '11h',
                                '12h',
                                '13h',
                                '14h',
                                '15h',
                                '16h',
                                '17h',
                                '18h',
                                '19h',
                                '20h',
                                '21h',
                                '22h',
                                '23h'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.dropDownHoraFimPausaValue = val),
                              width: 75.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00h',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.55, -0.48),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownMinutoAberturaValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownMinutoAberturaValue ??=
                                    FFAppState().horaEntradaMinuto != ''
                                        ? FFAppState().horaEntradaMinuto
                                        : '00',
                              ),
                              options: const [
                                '00',
                                '01',
                                '02',
                                '03',
                                '04',
                                '05',
                                '06',
                                '07',
                                '08',
                                '09',
                                '10',
                                '11',
                                '12',
                                '13',
                                '14',
                                '15',
                                '16',
                                '17',
                                '18',
                                '19',
                                '20',
                                '21',
                                '22',
                                '23',
                                '24',
                                '25',
                                '26',
                                '27',
                                '28',
                                '29',
                                '30',
                                '31',
                                '32',
                                '33',
                                '34',
                                '35',
                                '36',
                                '37',
                                '38',
                                '39',
                                '40',
                                '41',
                                '42',
                                '43',
                                '44',
                                '45',
                                '46',
                                '47',
                                '48',
                                '49',
                                '50',
                                '51',
                                '52',
                                '53',
                                '54',
                                '55',
                                '56',
                                '57',
                                '58',
                                '59'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownMinutoAberturaValue = val),
                              width: 99.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.19, 0.53),
                            child: Text(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.13, 0.36),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 40.0, 10.0),
                              child: Text(
                                'Horário de almoço/pausa',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.84, 0.89),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 40.0, 10.0),
                              child: Text(
                                'Até:',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.78, 0.6),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 40.0, 10.0),
                              child: Text(
                                'De:',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.56, 0.08),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownHoraEncerramentoValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownHoraEncerramentoValue ??=
                                    FFAppState().horaSaidaHora != ''
                                        ? FFAppState().horaSaidaHora
                                        : '00h',
                              ),
                              options: const [
                                '00h',
                                '01h',
                                '02h',
                                '03h',
                                '04h',
                                '05h',
                                '06h',
                                '07h',
                                '08h',
                                '09h',
                                '10h',
                                '11h',
                                '12h',
                                '13h',
                                '14h',
                                '15h',
                                '16h',
                                '17h',
                                '18h',
                                '19h',
                                '20h',
                                '21h',
                                '22h',
                                '23h'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownHoraEncerramentoValue = val),
                              width: 99.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00h',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.01, 0.06),
                            child: Text(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.14, 0.57),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownHoraInicioPausaValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownHoraInicioPausaValue ??=
                                    FFAppState().horaPausaInicioHora !=
                                                ''
                                        ? FFAppState().horaPausaInicioHora
                                        : '00h',
                              ),
                              options: const [
                                '00h',
                                '01h',
                                '02h',
                                '03h',
                                '04h',
                                '05h',
                                '06h',
                                '07h',
                                '08h',
                                '09h',
                                '10h',
                                '11h',
                                '12h',
                                '13h',
                                '14h',
                                '15h',
                                '16h',
                                '17h',
                                '18h',
                                '19h',
                                '20h',
                                '21h',
                                '22h',
                                '23h'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownHoraInicioPausaValue = val),
                              width: 75.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00h',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.66, 0.92),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownMinutoFimPausaValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownMinutoFimPausaValue ??=
                                    FFAppState().horaPausaFimMinuto !=
                                                ''
                                        ? FFAppState().horaPausaFimMinuto
                                        : '00',
                              ),
                              options: const [
                                '00',
                                '01',
                                '02',
                                '03',
                                '04',
                                '05',
                                '06',
                                '07',
                                '08',
                                '09',
                                '10',
                                '11',
                                '12',
                                '13',
                                '14',
                                '15',
                                '16',
                                '17',
                                '18',
                                '19',
                                '20',
                                '21',
                                '22',
                                '23',
                                '24',
                                '25',
                                '26',
                                '27',
                                '28',
                                '29',
                                '30',
                                '31',
                                '32',
                                '33',
                                '34',
                                '35',
                                '36',
                                '37',
                                '38',
                                '39',
                                '40',
                                '41',
                                '42',
                                '43',
                                '44',
                                '45',
                                '46',
                                '47',
                                '48',
                                '49',
                                '50',
                                '51',
                                '52',
                                '53',
                                '54',
                                '55',
                                '56',
                                '57',
                                '58',
                                '59'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownMinutoFimPausaValue = val),
                              width: 75.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.18, 0.86),
                            child: Text(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.65, 0.57),
                            child: FlutterFlowDropDown<String>(
                              controller: _model
                                      .dropDownMinutoInicioPausaValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownMinutoInicioPausaValue ??=
                                    FFAppState()
                                                    .horaPausaInicioMinuto !=
                                                ''
                                        ? FFAppState().horaPausaInicioMinuto
                                        : '00',
                              ),
                              options: const [
                                '00',
                                '01',
                                '02',
                                '03',
                                '04',
                                '05',
                                '06',
                                '07',
                                '08',
                                '09',
                                '10',
                                '11',
                                '12',
                                '13',
                                '14',
                                '15',
                                '16',
                                '17',
                                '18',
                                '19',
                                '20',
                                '21',
                                '22',
                                '23',
                                '24',
                                '25',
                                '26',
                                '27',
                                '28',
                                '29',
                                '30',
                                '31',
                                '32',
                                '33',
                                '34',
                                '35',
                                '36',
                                '37',
                                '38',
                                '39',
                                '40',
                                '41',
                                '42',
                                '43',
                                '44',
                                '45',
                                '46',
                                '47',
                                '48',
                                '49',
                                '50',
                                '51',
                                '52',
                                '53',
                                '54',
                                '55',
                                '56',
                                '57',
                                '58',
                                '59'
                              ],
                              onChanged: (val) => setState(() =>
                                  _model.dropDownMinutoInicioPausaValue = val),
                              width: 75.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: '00',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.01, 0.64),
                  child: Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        var shouldSetState = false;
                        // variable_horario_entrada
                        setState(() {
                          FFAppState().horarioEntrada =
                              '${_model.dropDownHoraAberturaValue}:${_model.dropDownMinutoAberturaValue}';
                        });
                        // variable_horario_saida
                        setState(() {
                          FFAppState().horarioSaida =
                              '${_model.dropDownHoraEncerramentoValue}:${_model.dropDownMinutoFechamentoValue}';
                        });
                        // variable_inicio_pausa
                        setState(() {
                          FFAppState().entradaAlmoco =
                              '${_model.dropDownHoraInicioPausaValue}:${_model.dropDownMinutoInicioPausaValue}';
                        });
                        // variable_fim_pausa
                        setState(() {
                          FFAppState().saidaAlmoco =
                              '${_model.dropDownHoraFimPausaValue}:${_model.dropDownMinutoFimPausaValue}';
                        });
                        if (FFAppState().statusHoraFuncionamento) {
                          _model.apiResultbs0 = await APIMinhaVitrineGroup
                              .horarioFuncionamentoPutCall
                              .call(
                            horarioEntrada: FFAppState().horarioEntrada,
                            horarioSaida: FFAppState().horarioSaida,
                            almocoEntrada: FFAppState().entradaAlmoco,
                            almocoSaida: FFAppState().saidaAlmoco,
                            diaDaSemana: FFAppState().diaDaSemanaVariable,
                            authToken: currentAuthenticationToken,
                            idHorarioFuncionamento: FFAppState()
                                .idHorarioFuncionamento
                                .toString(),
                          );
                          shouldSetState = true;
                        
                          setState(() {
                            FFAppState().horarioEntrada =
                                FFAppState().horarioEntrada;
                            FFAppState().horarioSaida =
                                FFAppState().horarioSaida;
                            FFAppState().entradaAlmoco =
                                FFAppState().entradaAlmoco;
                            FFAppState().saidaAlmoco = FFAppState().saidaAlmoco;
                            FFAppState().horarioFuncionamentoPayload =
                                FFAppState().horarioFuncionamentoPayload;
                          });

                          context.pushNamed('tela_add_info_contato_empresa');

                          Navigator.pop(context);
                        } else {
                          setState(() {
                            FFAppState().statusHoraFuncionamento = true;
                          });
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: const PopUpRepetirHorariosWidget(),
                              );
                            },
                          ).then((value) => setState(() {}));

                          if (shouldSetState) setState(() {});
                          return;
                        }

                        if (shouldSetState) setState(() {});
                      },
                      text: 'Salvar horário',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).success,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.01, 0.77),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await APIMinhaVitrineGroup.horarioFuncionamentoDeleteCall
                          .call(
                        tbhorariofuncionamentoId: getJsonField(
                          FFAppState().horarioFuncionamentoPayload,
                          r'''$[:].id''',
                        ).toString(),
                        authToken: currentAuthenticationToken,
                      );
                      setState(() {
                        FFAppState().horarioFuncionamentoPayload = null;
                        FFAppState().horarioEntrada = '';
                        FFAppState().horarioSaida = '';
                        FFAppState().idHorarioFuncionamento = 0;
                        FFAppState().horaEntradaHora = '';
                        FFAppState().horaSaidaHora = '';
                        FFAppState().horaSaidaMinuto = '';
                        FFAppState().horaEntradaMinuto = '';
                      });

                      context.pushNamed('tela_add_info_contato_empresa');

                      Navigator.pop(context);
                    },
                    text: 'Remover',
                    options: FFButtonOptions(
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).error,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ].divide(const SizedBox(height: 20.0)),
    );
  }
}
