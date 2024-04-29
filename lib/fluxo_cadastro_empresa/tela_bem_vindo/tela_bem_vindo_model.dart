import '/flutter_flow/flutter_flow_util.dart';
import 'tela_bem_vindo_widget.dart' show TelaBemVindoWidget;
import 'package:flutter/material.dart';

class TelaBemVindoModel extends FlutterFlowModel<TelaBemVindoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
