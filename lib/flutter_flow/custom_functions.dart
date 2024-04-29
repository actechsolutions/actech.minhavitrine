import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/auth/custom_auth/auth_util.dart';

String? substringHoraEntradaPausa() {
  // i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(0, 3);
  return substring;
}

String? substringMinEntrada() {
  // i need a substring code
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(4, 6);
  return substring;
}

String? substringHoraSaidaPausa() {
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(7, 9);
  return substring;
}

String? substringHoraSaida() {
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(7, 9);
  return substring;
}

String? substringMinEntradaPausa() {
  // i need a substring code
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(4, 6);
  return substring;
}

String? substringMinSaida() {
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(11, 13);
  return substring;
}

String? substringMinSaidaPausa() {
// i need a substring code
  String listaHorarioFuncinamento = '00h:00-00h:00';
  String substring = listaHorarioFuncinamento.substring(11, 13);
  return substring;
}
