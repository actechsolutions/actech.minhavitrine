// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:brasil_fields/src/validators/cpf_validator.dart';
import 'package:brasil_fields/src/validators/cnpj_validator.dart';

class NewCustomWidget extends StatefulWidget {
  const NewCustomWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<NewCustomWidget> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  String removeSpecialCharacters(String text) {
    return text.replaceAll(RegExp(r'[^\d]'), '');
  }

  bool validateCpfOrCnpj(String cpfOrCnpj) {
    String cleanedString = removeSpecialCharacters(cpfOrCnpj);

    if (cleanedString.length <= 11) {
      return CPFValidator.isValid(cleanedString);
    } else if (cleanedString.length <= 14) {
      return CNPJValidator.isValid(cleanedString);
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: Container(
        width: widget.width,
        child: TextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            CpfOuCnpjFormatter(),
          ],
          controller: _textEditingController,
          autofocus: true,
          textCapitalization: TextCapitalization.none,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'CPF/CNPJ*',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 115, 112, 112),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(249, 42, 90, 234),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF5963),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF5963),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: false,
            fillColor: Color.fromARGB(255, 255, 255, 255),
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 24, 0, 24),
          ),
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color.fromARGB(250, 0, 0, 0),
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              if (!validateCpfOrCnpj(value)) {
                return 'CPF/CNPJ inválido';
              }
            } else if (value == null || value.isEmpty) {
              return 'Favor, preeencher campo CPF/CNPJ';
            }
            return null;
          },
          onChanged: (text) {
            FFAppState().mascara = text;
            // Você pode manipular o texto digitado aqui
            // Por exemplo: setState(() { });
          },
        ),
      ),
    );
  }
}
