// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic FlutterFlow importsimport 'dart:convert';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/auth/custom_auth/auth_util.dart';

// Imports custom functions

import '/backend/api_requests/api_interceptor.dart';

class HoraInterceptorGet extends FFApiInterceptor {
  get substring => null;

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    print('Response Body: ${response.bodyText}');

    // Verifica se o status da resposta é bem-sucedido (código 2xx)
    if (response.statusCode >= 200 && response.statusCode < 300) {
      try {
        // Decodifica o corpo da resposta JSON em uma lista de mapas
        List<dynamic>? responseBody = jsonDecode(response.bodyText);

        // Verifica se responseBody não é null e se é uma lista com pelo menos um elemento
        if (responseBody != null && responseBody.isNotEmpty) {
          print('Response Body decoded successfully.');

          // Obtém o primeiro elemento da lista (o objeto JSON que contém os dados)
          Map<String, dynamic>? firstElement = responseBody[0];

          // Verifica se o primeiro elemento não é null e se é um Map
          // ignore: unnecessary_type_check
          if (firstElement != null && firstElement is Map<String, dynamic>) {
            print('First element of the response is a valid Map.');

            // Verifica se o mapa possui a chave 'horarioEntrada'
            if (firstElement.containsKey('horarioEntrada')) {
              print('Chave "horarioEntrada" encontrada no mapa.');

              // Obtém o valor do campo 'horarioEntrada' e converte para String
              String horarioEntrada = firstElement['horarioEntrada'].toString();
              String horarioSaida = firstElement['horarioSaida'].toString();
              String almocoEntrada = firstElement['almocoEntrada'].toString();
              String almocoSaida = firstElement['almocoSaida'].toString();
              print('Mapeamento dos campos de horario json');

              //Rebecca comece aqui!
              String horaEntradaHora = horarioEntrada.substring(0, 3);
              String horaEntradaMinuto = horarioEntrada.substring(4);
              String horaSaidaHora = horarioSaida.substring(0, 3);
              String horaSaidaMinuto = horarioSaida.substring(4);
              String horaPausaInicioHora = almocoEntrada.substring(0, 3);
              String horaPausaInicioMinuto = almocoEntrada.substring(4);
              String horaPausaFimHora = almocoSaida.substring(0, 3);
              String horaPausaFimMinuto = almocoSaida.substring(4);

              print('Substring extraída: $horaEntradaHora');

              // Atualiza a variável horaEntrada do FFAppState
              FFAppState().update(() {
                FFAppState().horaEntradaHora = horaEntradaHora;
                FFAppState().horaEntradaMinuto = horaEntradaMinuto;
                FFAppState().horaSaidaHora = horaSaidaHora;
                FFAppState().horaSaidaMinuto = horaSaidaMinuto;
                FFAppState().horaPausaInicioHora = horaPausaInicioHora;
                FFAppState().horaPausaInicioMinuto = horaPausaInicioMinuto;
                FFAppState().horaPausaFimHora = horaPausaFimHora;
                FFAppState().horaPausaFimMinuto = horaPausaFimMinuto;
              });
            } else {
              print('A chave "horarioEntrada" não foi encontrada no mapa.');
            }
          } else {
            print('The first element of the response is not a valid Map.');
          }
        } else {
          print('O corpo da resposta não é uma lista válida ou está vazia.');
        }
      } catch (e) {
        print('Erro ao decodificar o corpo da resposta JSON: $e');
      }
    }

    return response;
  }
}
