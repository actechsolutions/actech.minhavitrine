import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _imageLogotipo = prefs.getString('ff_imageLogotipo') ?? _imageLogotipo;
    });
    _safeInit(() {
      _listaFormaDePagamento =
          prefs.getStringList('ff_listaFormaDePagamento') ??
              _listaFormaDePagamento;
    });
    _safeInit(() {
      _diaDaSemanaVariable =
          prefs.getString('ff_diaDaSemanaVariable') ?? _diaDaSemanaVariable;
    });
    _safeInit(() {
      _idUser = prefs.getInt('ff_idUser') ?? _idUser;
    });
    _safeInit(() {
      _listaCategoria = prefs.getStringList('ff_listaCategoria')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _listaCategoria;
    });
    _safeInit(() {
      _horarioEntrada = prefs.getString('ff_horarioEntrada') ?? _horarioEntrada;
    });
    _safeInit(() {
      _horarioSaida = prefs.getString('ff_horarioSaida') ?? _horarioSaida;
    });
    _safeInit(() {
      _entradaAlmoco = prefs.getString('ff_entradaAlmoco') ?? _entradaAlmoco;
    });
    _safeInit(() {
      _saidaAlmoco = prefs.getString('ff_saidaAlmoco') ?? _saidaAlmoco;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_horarioFuncionamentoPayload')) {
        try {
          _horarioFuncionamentoPayload = jsonDecode(
              prefs.getString('ff_horarioFuncionamentoPayload') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _onUploadOperationPhotoCounter =
          prefs.getInt('ff_onUploadOperationPhotoCounter') ??
              _onUploadOperationPhotoCounter;
    });
    _safeInit(() {
      _imagemTeste = prefs.getStringList('ff_imagemTeste') ?? _imagemTeste;
    });
    _safeInit(() {
      _horaEntrada = prefs.getString('ff_horaEntrada') ?? _horaEntrada;
    });
    _safeInit(() {
      _diaSemana = prefs.getString('ff_diaSemana') ?? _diaSemana;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_listaHorarioFuncionamentoJson')) {
        try {
          _listaHorarioFuncionamentoJson = jsonDecode(
              prefs.getString('ff_listaHorarioFuncionamentoJson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imageLogotipo =
      'https://static3.depositphotos.com/1000363/104/i/450/depositphotos_1045236-stock-photo-free-button.jpg';
  String get imageLogotipo => _imageLogotipo;
  set imageLogotipo(String value) {
    _imageLogotipo = value;
    prefs.setString('ff_imageLogotipo', value);
  }

  List<String> _listaFormaDePagamento = [];
  List<String> get listaFormaDePagamento => _listaFormaDePagamento;
  set listaFormaDePagamento(List<String> value) {
    _listaFormaDePagamento = value;
    prefs.setStringList('ff_listaFormaDePagamento', value);
  }

  void addToListaFormaDePagamento(String value) {
    _listaFormaDePagamento.add(value);
    prefs.setStringList('ff_listaFormaDePagamento', _listaFormaDePagamento);
  }

  void removeFromListaFormaDePagamento(String value) {
    _listaFormaDePagamento.remove(value);
    prefs.setStringList('ff_listaFormaDePagamento', _listaFormaDePagamento);
  }

  void removeAtIndexFromListaFormaDePagamento(int index) {
    _listaFormaDePagamento.removeAt(index);
    prefs.setStringList('ff_listaFormaDePagamento', _listaFormaDePagamento);
  }

  void updateListaFormaDePagamentoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _listaFormaDePagamento[index] = updateFn(_listaFormaDePagamento[index]);
    prefs.setStringList('ff_listaFormaDePagamento', _listaFormaDePagamento);
  }

  void insertAtIndexInListaFormaDePagamento(int index, String value) {
    _listaFormaDePagamento.insert(index, value);
    prefs.setStringList('ff_listaFormaDePagamento', _listaFormaDePagamento);
  }

  String _Cidade = '';
  String get Cidade => _Cidade;
  set Cidade(String value) {
    _Cidade = value;
  }

  String _Bairro = '';
  String get Bairro => _Bairro;
  set Bairro(String value) {
    _Bairro = value;
  }

  String _Estado = '';
  String get Estado => _Estado;
  set Estado(String value) {
    _Estado = value;
  }

  bool _ResutadoCEP = false;
  bool get ResutadoCEP => _ResutadoCEP;
  set ResutadoCEP(bool value) {
    _ResutadoCEP = value;
  }

  String _mascara = '';
  String get mascara => _mascara;
  set mascara(String value) {
    _mascara = value;
  }

  String _diaDaSemanaVariable = '';
  String get diaDaSemanaVariable => _diaDaSemanaVariable;
  set diaDaSemanaVariable(String value) {
    _diaDaSemanaVariable = value;
    prefs.setString('ff_diaDaSemanaVariable', value);
  }

  int _idUser = 0;
  int get idUser => _idUser;
  set idUser(int value) {
    _idUser = value;
    prefs.setInt('ff_idUser', value);
  }

  List<dynamic> _listaCategoria = [];
  List<dynamic> get listaCategoria => _listaCategoria;
  set listaCategoria(List<dynamic> value) {
    _listaCategoria = value;
    prefs.setStringList(
        'ff_listaCategoria', value.map((x) => jsonEncode(x)).toList());
  }

  void addToListaCategoria(dynamic value) {
    _listaCategoria.add(value);
    prefs.setStringList('ff_listaCategoria',
        _listaCategoria.map((x) => jsonEncode(x)).toList());
  }

  void removeFromListaCategoria(dynamic value) {
    _listaCategoria.remove(value);
    prefs.setStringList('ff_listaCategoria',
        _listaCategoria.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromListaCategoria(int index) {
    _listaCategoria.removeAt(index);
    prefs.setStringList('ff_listaCategoria',
        _listaCategoria.map((x) => jsonEncode(x)).toList());
  }

  void updateListaCategoriaAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listaCategoria[index] = updateFn(_listaCategoria[index]);
    prefs.setStringList('ff_listaCategoria',
        _listaCategoria.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInListaCategoria(int index, dynamic value) {
    _listaCategoria.insert(index, value);
    prefs.setStringList('ff_listaCategoria',
        _listaCategoria.map((x) => jsonEncode(x)).toList());
  }

  String _time = '';
  String get time => _time;
  set time(String value) {
    _time = value;
  }

  String _horarioEntrada = '';
  String get horarioEntrada => _horarioEntrada;
  set horarioEntrada(String value) {
    _horarioEntrada = value;
    prefs.setString('ff_horarioEntrada', value);
  }

  String _horarioSaida = '';
  String get horarioSaida => _horarioSaida;
  set horarioSaida(String value) {
    _horarioSaida = value;
    prefs.setString('ff_horarioSaida', value);
  }

  String _entradaAlmoco = '';
  String get entradaAlmoco => _entradaAlmoco;
  set entradaAlmoco(String value) {
    _entradaAlmoco = value;
    prefs.setString('ff_entradaAlmoco', value);
  }

  String _saidaAlmoco = '';
  String get saidaAlmoco => _saidaAlmoco;
  set saidaAlmoco(String value) {
    _saidaAlmoco = value;
    prefs.setString('ff_saidaAlmoco', value);
  }

  dynamic _horarioFuncionamentoPayload;
  dynamic get horarioFuncionamentoPayload => _horarioFuncionamentoPayload;
  set horarioFuncionamentoPayload(dynamic value) {
    _horarioFuncionamentoPayload = value;
    prefs.setString('ff_horarioFuncionamentoPayload', jsonEncode(value));
  }

  int _onUploadOperationPhotoCounter = 0;
  int get onUploadOperationPhotoCounter => _onUploadOperationPhotoCounter;
  set onUploadOperationPhotoCounter(int value) {
    _onUploadOperationPhotoCounter = value;
    prefs.setInt('ff_onUploadOperationPhotoCounter', value);
  }

  List<String> _imagem = [];
  List<String> get imagem => _imagem;
  set imagem(List<String> value) {
    _imagem = value;
  }

  void addToImagem(String value) {
    _imagem.add(value);
  }

  void removeFromImagem(String value) {
    _imagem.remove(value);
  }

  void removeAtIndexFromImagem(int index) {
    _imagem.removeAt(index);
  }

  void updateImagemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _imagem[index] = updateFn(_imagem[index]);
  }

  void insertAtIndexInImagem(int index, String value) {
    _imagem.insert(index, value);
  }

  List<String> _imagemTeste = [];
  List<String> get imagemTeste => _imagemTeste;
  set imagemTeste(List<String> value) {
    _imagemTeste = value;
    prefs.setStringList('ff_imagemTeste', value);
  }

  void addToImagemTeste(String value) {
    _imagemTeste.add(value);
    prefs.setStringList('ff_imagemTeste', _imagemTeste);
  }

  void removeFromImagemTeste(String value) {
    _imagemTeste.remove(value);
    prefs.setStringList('ff_imagemTeste', _imagemTeste);
  }

  void removeAtIndexFromImagemTeste(int index) {
    _imagemTeste.removeAt(index);
    prefs.setStringList('ff_imagemTeste', _imagemTeste);
  }

  void updateImagemTesteAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _imagemTeste[index] = updateFn(_imagemTeste[index]);
    prefs.setStringList('ff_imagemTeste', _imagemTeste);
  }

  void insertAtIndexInImagemTeste(int index, String value) {
    _imagemTeste.insert(index, value);
    prefs.setStringList('ff_imagemTeste', _imagemTeste);
  }

  bool _statusHoraFuncionamento = false;
  bool get statusHoraFuncionamento => _statusHoraFuncionamento;
  set statusHoraFuncionamento(bool value) {
    _statusHoraFuncionamento = value;
  }

  String _horaEntrada = '';
  String get horaEntrada => _horaEntrada;
  set horaEntrada(String value) {
    _horaEntrada = value;
    prefs.setString('ff_horaEntrada', value);
  }

  String _lista = '';
  String get lista => _lista;
  set lista(String value) {
    _lista = value;
  }

  String _diaSemana = '';
  String get diaSemana => _diaSemana;
  set diaSemana(String value) {
    _diaSemana = value;
    prefs.setString('ff_diaSemana', value);
  }

  String _horaEntradaMinuto = '';
  String get horaEntradaMinuto => _horaEntradaMinuto;
  set horaEntradaMinuto(String value) {
    _horaEntradaMinuto = value;
  }

  String _horaEntradaHora = '';
  String get horaEntradaHora => _horaEntradaHora;
  set horaEntradaHora(String value) {
    _horaEntradaHora = value;
  }

  String _horaSaidaHora = '';
  String get horaSaidaHora => _horaSaidaHora;
  set horaSaidaHora(String value) {
    _horaSaidaHora = value;
  }

  String _horaSaidaMinuto = '';
  String get horaSaidaMinuto => _horaSaidaMinuto;
  set horaSaidaMinuto(String value) {
    _horaSaidaMinuto = value;
  }

  String _horaPausaInicioHora = '';
  String get horaPausaInicioHora => _horaPausaInicioHora;
  set horaPausaInicioHora(String value) {
    _horaPausaInicioHora = value;
  }

  String _horaPausaInicioMinuto = '';
  String get horaPausaInicioMinuto => _horaPausaInicioMinuto;
  set horaPausaInicioMinuto(String value) {
    _horaPausaInicioMinuto = value;
  }

  String _horaPausaFimHora = '';
  String get horaPausaFimHora => _horaPausaFimHora;
  set horaPausaFimHora(String value) {
    _horaPausaFimHora = value;
  }

  String _horaPausaFimMinuto = '';
  String get horaPausaFimMinuto => _horaPausaFimMinuto;
  set horaPausaFimMinuto(String value) {
    _horaPausaFimMinuto = value;
  }

  dynamic _listaHorarioFuncionamentoJson;
  dynamic get listaHorarioFuncionamentoJson => _listaHorarioFuncionamentoJson;
  set listaHorarioFuncionamentoJson(dynamic value) {
    _listaHorarioFuncionamentoJson = value;
    prefs.setString('ff_listaHorarioFuncionamentoJson', jsonEncode(value));
  }

  int _idHorarioFuncionamento = 0;
  int get idHorarioFuncionamento => _idHorarioFuncionamento;
  set idHorarioFuncionamento(int value) {
    _idHorarioFuncionamento = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
