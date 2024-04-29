import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'excluir_categoria_pop_up_warning_model.dart';
export 'excluir_categoria_pop_up_warning_model.dart';

class ExcluirCategoriaPopUpWarningWidget extends StatefulWidget {
  const ExcluirCategoriaPopUpWarningWidget({super.key});

  @override
  State<ExcluirCategoriaPopUpWarningWidget> createState() =>
      _ExcluirCategoriaPopUpWarningWidgetState();
}

class _ExcluirCategoriaPopUpWarningWidgetState
    extends State<ExcluirCategoriaPopUpWarningWidget> {
  late ExcluirCategoriaPopUpWarningModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExcluirCategoriaPopUpWarningModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 295.0,
        height: 290.0,
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
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Icon(
                Icons.warning_amber_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 100.0,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                'Você não pode excluir esta categoria \npois existem produtos cadastrados nela.\n',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
