import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'categoria_choices_model.dart';
export 'categoria_choices_model.dart';

class CategoriaChoicesWidget extends StatefulWidget {
  const CategoriaChoicesWidget({super.key});

  @override
  State<CategoriaChoicesWidget> createState() => _CategoriaChoicesWidgetState();
}

class _CategoriaChoicesWidgetState extends State<CategoriaChoicesWidget> {
  late CategoriaChoicesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriaChoicesModel());

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
      alignment: const AlignmentDirectional(0.0, 0.88),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
        child: FlutterFlowChoiceChips(
          options: const [
            ChipData('Categoria1'),
            ChipData('categoria2'),
            ChipData('categoria 3')
          ],
          onChanged: (val) =>
              setState(() => _model.choiceChipsValue = val?.firstOrNull),
          selectedChipStyle: ChipStyle(
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                ),
            iconColor: FlutterFlowTheme.of(context).primaryText,
            iconSize: 18.0,
            elevation: 4.0,
            borderRadius: BorderRadius.circular(16.0),
          ),
          unselectedChipStyle: ChipStyle(
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                ),
            iconColor: FlutterFlowTheme.of(context).secondaryText,
            iconSize: 18.0,
            elevation: 0.0,
            borderRadius: BorderRadius.circular(16.0),
          ),
          chipSpacing: 12.0,
          rowSpacing: 12.0,
          multiselect: false,
          alignment: WrapAlignment.start,
          controller: _model.choiceChipsValueController ??=
              FormFieldController<List<String>>(
            [],
          ),
          wrapped: false,
        ),
      ),
    );
  }
}
