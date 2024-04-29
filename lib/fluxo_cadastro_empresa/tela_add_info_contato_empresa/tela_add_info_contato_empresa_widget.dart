import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/fluxo_cadastro_empresa/horario_pop_up/horario_pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'tela_add_info_contato_empresa_model.dart';
export 'tela_add_info_contato_empresa_model.dart';

class TelaAddInfoContatoEmpresaWidget extends StatefulWidget {
  const TelaAddInfoContatoEmpresaWidget({super.key});

  @override
  State<TelaAddInfoContatoEmpresaWidget> createState() =>
      _TelaAddInfoContatoEmpresaWidgetState();
}

class _TelaAddInfoContatoEmpresaWidgetState
    extends State<TelaAddInfoContatoEmpresaWidget> {
  late TelaAddInfoContatoEmpresaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaAddInfoContatoEmpresaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultrnr =
          await APIMinhaVitrineGroup.buscarHorarioEmpresaPorLoteCall.call(
        authToken: currentAuthenticationToken,
      );
      setState(() {
        FFAppState().listaHorarioFuncionamentoJson =
            (_model.apiResultrnr?.jsonBody ?? '');
      });
    });

    _model.inputEmailEmpresaTextController ??= TextEditingController();
    _model.inputEmailEmpresaFocusNode ??= FocusNode();

    _model.inputTelWhatsEmpresaTextController ??= TextEditingController();
    _model.inputTelWhatsEmpresaFocusNode ??= FocusNode();

    _model.inputInstagramEmpresaTextController ??= TextEditingController();
    _model.inputInstagramEmpresaFocusNode ??= FocusNode();

    _model.inputFacebookEmpresaTextController ??= TextEditingController();
    _model.inputFacebookEmpresaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent4,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: const Color(0x00FFFFFF),
            buttonSize: 50.0,
            fillColor: const Color(0x00FFFFFF),
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 55.0, 0.0),
              child: Text(
                'Informações de Contato',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 3.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('tela_add_produto_empresa');
                          },
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.lightbulb_outline_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 35.0,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.89),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 40.0),
                                    child: Text(
                                      'Preencha suas informações de contato \npara que os seus clientes possam te localizar',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.66),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 40.0),
                                    child: SizedBox(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model
                                            .inputEmailEmpresaTextController,
                                        focusNode:
                                            _model.inputEmailEmpresaFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Email*',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.2,
                                                  ),
                                          alignLabelWithHint: false,
                                          hintText: 'mundoanimal@exemplo.com',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x9E57636C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .inputEmailEmpresaTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.39),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 40.0),
                                    child: SizedBox(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model
                                            .inputTelWhatsEmpresaTextController,
                                        focusNode: _model
                                            .inputTelWhatsEmpresaFocusNode,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Telefone/WhatsApp*',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: '(00) 00000-0000',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x9E57636C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .inputTelWhatsEmpresaTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          _model.inputTelWhatsEmpresaMask
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.14),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 40.0),
                                    child: SizedBox(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model
                                            .inputInstagramEmpresaTextController,
                                        focusNode: _model
                                            .inputInstagramEmpresaFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Instagram',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'mundoanimal_ofc',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x9E57636C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        validator: _model
                                            .inputInstagramEmpresaTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.13),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 20.0),
                                    child: SizedBox(
                                      width: 300.0,
                                      child: TextFormField(
                                        controller: _model
                                            .inputFacebookEmpresaTextController,
                                        focusNode: _model
                                            .inputFacebookEmpresaFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Facebook',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Mundo Animal Oficial',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x9E57636C),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .inputFacebookEmpresaTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.27),
                                  child: Text(
                                    'Horário de Funcionamento',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 434.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Domingo';
                                              });
                                              _model.horarioFuncionamentoGet =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGet
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGet
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGet
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Domingo',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Domingo')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Domingo')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Domingo')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Segunda-feira';
                                              });
                                              _model.horarioFuncionamentoGetSegunda =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetSegunda
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetSegunda
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetSegunda
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Segunda-feira',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Segunda-feira')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Segunda-feira')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Segunda-feira')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Terça-feira';
                                              });
                                              _model.horarioFuncionamentoGetTerca =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetTerca
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetTerca
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetTerca
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Terça-feira',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Terça-feira')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Terça-feira')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Terça-feira')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Quarta-feira';
                                              });
                                              _model.horarioFuncionamentoGetQuarta =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetQuarta
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetQuarta
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetQuarta
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Quarta-feira',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Quarta-feira')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Quarta-feira')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Quarta-feira')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Quinta-feira';
                                              });
                                              _model.horarioFuncionamentoGetQuinta =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetQuinta
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetQuinta
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetQuinta
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Quinta-feira',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Quinta-feira')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Quinta-feira')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Quinta-feira')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Sexta-feira';
                                              });
                                              _model.horarioFuncionamentoGetSexta =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetSexta
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetSexta
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetSexta
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Sexta-feira',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Sexta-feira')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Sexta-feira')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Sexta-feira')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              // fsdfsdf
                                              setState(() {
                                                FFAppState()
                                                        .diaDaSemanaVariable =
                                                    'Sábado';
                                              });
                                              _model.horarioFuncionamentoGetSabado =
                                                  await APIMinhaVitrineGroup
                                                      .horarioFuncionamentoGetCall
                                                      .call(
                                                nomeDia: FFAppState()
                                                    .diaDaSemanaVariable,
                                                authToken:
                                                    currentAuthenticationToken,
                                              );
                                              if (getJsonField(
                                                    (_model.horarioFuncionamentoGetSabado
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:].id''',
                                                  ) !=
                                                  null) {
                                                setState(() {
                                                  FFAppState()
                                                          .idHorarioFuncionamento =
                                                      APIMinhaVitrineGroup
                                                          .horarioFuncionamentoGetCall
                                                          .idHorarioFuncionamento(
                                                    (_model.horarioFuncionamentoGetSabado
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });
                                              }
                                              setState(() {
                                                FFAppState()
                                                        .horarioFuncionamentoPayload =
                                                    (_model.horarioFuncionamentoGetSabado
                                                            ?.jsonBody ??
                                                        '');
                                              });
                                              await showDialog(
                                                barrierColor: const Color(0x7357636C),
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child:
                                                          const HorarioPopUpWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              setState(() {});
                                            },
                                            child: ListTile(
                                              title: Text(
                                                'Sábado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  FFAppState()
                                                      .listaHorarioFuncionamentoJson,
                                                  r'''$[?(@.diaDaSemana == 'Sábado')].horarioEntrada''',
                                                )
                                                    ? '${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Sábado')].horarioEntrada''',
                                                      ).toString()} - ${getJsonField(
                                                        FFAppState()
                                                            .listaHorarioFuncionamentoJson,
                                                        r'''$[?(@.diaDaSemana == 'Sábado')].horarioSaida''',
                                                      ).toString()}'
                                                    : 'Fechado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 10.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              dense: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 1.1),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 50.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button-salvar pressed ...');
                                        },
                                        text: 'Salvar',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xbacd065e7c),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
