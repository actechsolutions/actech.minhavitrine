import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fluxo_cadastro_produtos_empresa/pop_up_menu_empresa/pop_up_menu_empresa_widget.dart';
import 'package:flutter/material.dart';
import 'menu_pop_up_model.dart';
export 'menu_pop_up_model.dart';

class MenuPopUpWidget extends StatefulWidget {
  const MenuPopUpWidget({super.key});

  @override
  State<MenuPopUpWidget> createState() => _MenuPopUpWidgetState();
}

class _MenuPopUpWidgetState extends State<MenuPopUpWidget> {
  late MenuPopUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPopUpModel());

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
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: SizedBox(
            width: 250.0,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: SizedBox(
                    width: 250.0,
                    child: Stack(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: SizedBox(
                            width: 250.0,
                            child: Stack(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.popUpMenuEmpresaModel,
                                    updateCallback: () => setState(() {}),
                                    child: const PopUpMenuEmpresaWidget(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
