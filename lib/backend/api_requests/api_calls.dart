import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Minha Vitrine Group Code

class APIMinhaVitrineGroup {
  static String baseUrl = 'https://x1he-6est-du25.n7c.xano.io/api:JaNPac-e';
  static Map<String, String> headers = {};
  static SignupCall signupCall = SignupCall();
  static CadastroEmpresaCall cadastroEmpresaCall = CadastroEmpresaCall();
  static ContatoEmpresaCall contatoEmpresaCall = ContatoEmpresaCall();
  static CadastrarCategoriaCall cadastrarCategoriaCall =
      CadastrarCategoriaCall();
  static CadastrarDiadaSemanaCall cadastrarDiadaSemanaCall =
      CadastrarDiadaSemanaCall();
  static CadastrarProdutoCall cadastrarProdutoCall = CadastrarProdutoCall();
  static CadastrarEnderecoEmpresaCall cadastrarEnderecoEmpresaCall =
      CadastrarEnderecoEmpresaCall();
  static BuscarEmpresaCall buscarEmpresaCall = BuscarEmpresaCall();
  static BuscarCategoriaCall buscarCategoriaCall = BuscarCategoriaCall();
  static BuscarContatoEmpresaCall buscarContatoEmpresaCall =
      BuscarContatoEmpresaCall();
  static BuscarDiaSemanaCall buscarDiaSemanaCall = BuscarDiaSemanaCall();
  static BuscarEnderecoEmpresaCall buscarEnderecoEmpresaCall =
      BuscarEnderecoEmpresaCall();
  static BuscarVariacaoCall buscarVariacaoCall = BuscarVariacaoCall();
  static CadastroVariacaoCall cadastroVariacaoCall = CadastroVariacaoCall();
  static DeleteCategoriaCall deleteCategoriaCall = DeleteCategoriaCall();
  static DeleteContatoEmpresaCall deleteContatoEmpresaCall =
      DeleteContatoEmpresaCall();
  static DeleteDiaSemanaCall deleteDiaSemanaCall = DeleteDiaSemanaCall();
  static DeleteEmpresaCall deleteEmpresaCall = DeleteEmpresaCall();
  static DeleteEnderecoEmpresaCall deleteEnderecoEmpresaCall =
      DeleteEnderecoEmpresaCall();
  static DeleteProdutoCall deleteProdutoCall = DeleteProdutoCall();
  static DeleteVariacaoCall deleteVariacaoCall = DeleteVariacaoCall();
  static UpdateCategoriaCall updateCategoriaCall = UpdateCategoriaCall();
  static UpdateContatoEmpresaCall updateContatoEmpresaCall =
      UpdateContatoEmpresaCall();
  static UpdateDiaSemanaCall updateDiaSemanaCall = UpdateDiaSemanaCall();
  static UpdateEmpresaCall updateEmpresaCall = UpdateEmpresaCall();
  static UpdateEnderecoEmpresaCall updateEnderecoEmpresaCall =
      UpdateEnderecoEmpresaCall();
  static UpdateProdutoCall updateProdutoCall = UpdateProdutoCall();
  static UpdateVariacaoCall updateVariacaoCall = UpdateVariacaoCall();
  static BuscarCategoriaPorUserIdCall buscarCategoriaPorUserIdCall =
      BuscarCategoriaPorUserIdCall();
  static BuscarUsuarioLogadoCall buscarUsuarioLogadoCall =
      BuscarUsuarioLogadoCall();
  static BuscarProdutoCall buscarProdutoCall = BuscarProdutoCall();
  static DeleteCategoriaPorNomeCall deleteCategoriaPorNomeCall =
      DeleteCategoriaPorNomeCall();
  static BuscarCategoriaPorNomeCall buscarCategoriaPorNomeCall =
      BuscarCategoriaPorNomeCall();
  static AtualizarCategoriaPorIdCall atualizarCategoriaPorIdCall =
      AtualizarCategoriaPorIdCall();
  static BuscarHorarioEmpresaPorLoteCall buscarHorarioEmpresaPorLoteCall =
      BuscarHorarioEmpresaPorLoteCall();
  static CadastrarHorarioEmpresaEmLoteCall cadastrarHorarioEmpresaEmLoteCall =
      CadastrarHorarioEmpresaEmLoteCall();
  static HorarioFuncionamentoPutCall horarioFuncionamentoPutCall =
      HorarioFuncionamentoPutCall();
  static HorarioFuncionamentoGetCall horarioFuncionamentoGetCall =
      HorarioFuncionamentoGetCall();
  static HorarioFuncionamentoDeleteCall horarioFuncionamentoDeleteCall =
      HorarioFuncionamentoDeleteCall();
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? dominio = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$dominio",
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class CadastroEmpresaCall {
  Future<ApiCallResponse> call({
    String? cpfCnpj = '',
    String? descricao = '',
    String? nomeEmpresa = '',
    FFUploadedFile? logotipo,
    List<String>? listaTipoPagamentoList,
    String? authToken = '',
  }) async {
    final listaTipoPagamento = _serializeList(listaTipoPagamentoList);

    return ApiManager.instance.makeApiCall(
      callName: 'cadastroEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbempresa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'cpfCnpj': cpfCnpj,
        'descricao': descricao,
        'nomeEmpresa': nomeEmpresa,
        'logotipo': logotipo,
        'listaTipoPagamento': listaTipoPagamento,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ContatoEmpresaCall {
  Future<ApiCallResponse> call({
    String? nmRedeSocial = '',
    String? nuTelefone = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'contatoEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcontatoempresa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmRedeSocial': nmRedeSocial,
        'nuTelefone': nuTelefone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarCategoriaCall {
  Future<ApiCallResponse> call({
    String? nmCategoria = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarCategoria',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmCategoria': nmCategoria,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarDiadaSemanaCall {
  Future<ApiCallResponse> call({
    String? nomeDia = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarDiadaSemana',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbdiasemana',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nomeDia': nomeDia,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarProdutoCall {
  Future<ApiCallResponse> call({
    String? nmProduto = '',
    bool? flDisponivel,
    String? descricao = '',
    bool? flFracionar,
    List<FFUploadedFile>? imageList,
    double? precoProduto,
    int? quantidadeProduto,
    String? authToken = '',
    FFUploadedFile? imageProduto,
  }) async {
    final image = imageList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarProduto',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbproduto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmProduto': nmProduto,
        'descricao': descricao,
        'flDisponivel': flDisponivel,
        'flFracionar': flFracionar,
        'imageProduto': image,
        'precoProduto': precoProduto,
        'quantidadeProduto': quantidadeProduto,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastrarEnderecoEmpresaCall {
  Future<ApiCallResponse> call({
    String? cep = '',
    String? nmBairro = '',
    String? nmCidade = '',
    String? nmEstado = '',
    String? nmLogradouro = '',
    String? numero = '',
    String? pontoDeReferencia = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarEnderecoEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbenderecoempresa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'cep': cep,
        'nmBairro': nmBairro,
        'nmCidade': nmCidade,
        'nmEstado': nmEstado,
        'nmLogradouro': nmLogradouro,
        'numero': numero,
        'pontoDeReferencia': pontoDeReferencia,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEmpresaCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbempresa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? cpfCnpj(dynamic response) => (getJsonField(
        response,
        r'''$[:].cpfCnpj''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeEmpresa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? logotipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].logotipo.url''',
      ));
}

class BuscarCategoriaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarCategoria',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? categoria(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nmCategoria''',
      ));
}

class BuscarContatoEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarContatoEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcontatoempresa',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarDiaSemanaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarDiaSemana',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbdiasemana',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEnderecoEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarEnderecoEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbenderecoempresa',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarVariacaoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarVariacao',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbvariacao',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastroVariacaoCall {
  Future<ApiCallResponse> call({
    String? descricaoVariacao = '',
    String? estado = '',
    double? precoVariacao,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CadastroVariacao',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbvariacao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'DescricaoVariacao': descricaoVariacao,
        'Estado': estado,
        'PrecoVariacao': precoVariacao,
        'authToken': authToken,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCategoriaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteCategoria',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/{tbcategoria_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteContatoEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteContatoEmpresa',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbcontatoempresa/{tbcontatoempresa_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDiaSemanaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteDiaSemana',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbdiasemana/{tbdiasemana_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbempresa/{tbempresa_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteEnderecoEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteEnderecoEmpresa',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbenderecoempresa/{tbenderecoempresa_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProdutoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteProduto',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbproduto/{tbproduto_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteVariacaoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteVariacao',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbvariacao/{tbvariacao_id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCategoriaCall {
  Future<ApiCallResponse> call({
    String? nmProduto = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCategoria',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/{tbcategoria_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmProduto': nmProduto,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateContatoEmpresaCall {
  Future<ApiCallResponse> call({
    String? nmRedeSocial = '',
    String? nmTelefone = '',
    String? nmFacebook = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateContatoEmpresa',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbcontatoempresa/{tbcontatoempresa_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmInstagram': nmRedeSocial,
        'nmTelefone': nmTelefone,
        'nmFacebook': nmFacebook,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDiaSemanaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? nomeDia = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateDiaSemana',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbdiasemana/{tbdiasemana_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nomeDia': nomeDia,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmpresaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? cpfCnpj = '',
    String? descricao = '',
    String? nomeEmpresa = '',
    FFUploadedFile? logotipo,
    String? tipoPagamento = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateEmpresa',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbempresa/{tbempresa_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'cpfCnpj': cpfCnpj,
        'descricao': descricao,
        'nomeEmpresa': nomeEmpresa,
        'logotipo': logotipo,
        'tipoPagamento': tipoPagamento,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEnderecoEmpresaCall {
  Future<ApiCallResponse> call({
    String? cep = '',
    String? nomeBairro = '',
    String? nmCidade = '',
    String? nmEstado = '',
    String? nmLogradouro = '',
    String? numero = '',
    String? pontoDeReferencia = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateEnderecoEmpresa',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbenderecoempresa/{tbenderecoempresa_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'cep': cep,
        'nmBairro': nomeBairro,
        'nmCidade': nmCidade,
        'nmEstado': nmEstado,
        'nmLogradouro': nmLogradouro,
        'numero': numero,
        'pontoDeReferencia': pontoDeReferencia,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProdutoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? nmProduto = '',
    String? descricao = '',
    bool? flDisponivel,
    bool? flFracionar,
    FFUploadedFile? imagemDoProduto,
    double? precoProduto,
    int? quantidadeProduto,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateProduto',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbproduto/{tbproduto_id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmProduto': nmProduto,
        'descricao': descricao,
        'flDisponivel': flDisponivel,
        'flFracionar': flFracionar,
        'imagemDoProduto': imagemDoProduto,
        'precoProduto': precoProduto,
        'quantidadeProduto': quantidadeProduto,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateVariacaoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? descricaVariacao = '',
    double? precoVariacao,
    String? estado = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateVariacao',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbvariacao/{tbvariacao_id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'DescricaVariacao': descricaVariacao,
        'PrecoVariacao': precoVariacao,
        'Estado': estado,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarCategoriaPorUserIdCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarCategoriaPorUserId',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/user_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? codeError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? messageError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List<String>? nomeCatecoria(dynamic response) => (getJsonField(
        response,
        r'''$[:].nmCategoria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscarUsuarioLogadoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarUsuarioLogado',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class BuscarProdutoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarProduto',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbproduto',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCategoriaPorNomeCall {
  Future<ApiCallResponse> call({
    String? nmCategoria = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteCategoriaPorNome',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/user_id/$nmCategoria',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarCategoriaPorNomeCall {
  Future<ApiCallResponse> call({
    String? nmCategoria = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarCategoriaPorNome',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/user_id/$nmCategoria',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? idCategoria(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class AtualizarCategoriaPorIdCall {
  Future<ApiCallResponse> call({
    int? tbcategoriaId,
    String? authToken = '',
    String? nmCategoria = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarCategoriaPorId',
      apiUrl: '${APIMinhaVitrineGroup.baseUrl}/tbcategoria/$tbcategoriaId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'nmCategoria': nmCategoria,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarHorarioEmpresaPorLoteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarHorarioEmpresaPorLote',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbhorariofuncionamento/list/user_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? payloadJson(dynamic response) => getJsonField(
        response,
        r'''$[:].body''',
        true,
      ) as List?;
  List<String>? diaDaSemana(dynamic response) => (getJsonField(
        response,
        r'''$[:].diaDaSemana''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? saidaAlmoco(dynamic response) => (getJsonField(
        response,
        r'''$[:].saidaAlmoco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entradaAlmoco(dynamic response) => (getJsonField(
        response,
        r'''$[:].entradaAlmoco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? horarioSaida(dynamic response) => (getJsonField(
        response,
        r'''$[:].horarioSaida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? horarioEntrada(dynamic response) => (getJsonField(
        response,
        r'''$[:].horarioEntrada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? userId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CadastrarHorarioEmpresaEmLoteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? horarioEntrada = '',
    String? horarioSaida = '',
    String? almocoEntrada = '',
    String? almocoSaida = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarHorarioEmpresaEmLote',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbhorariofuncionamento/cadastroemlote',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'horarioEntrada': horarioEntrada,
        'horarioSaida': horarioSaida,
        'almocoEntrada': almocoEntrada,
        'almocoSaida': almocoSaida,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class HorarioFuncionamentoPutCall {
  Future<ApiCallResponse> call({
    String? horarioEntrada = '',
    String? horarioSaida = '',
    String? almocoEntrada = '',
    String? almocoSaida = '',
    String? diaDaSemana = '',
    String? authToken = '',
    String? idHorarioFuncionamento = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'HorarioFuncionamentoPut',
        apiUrl:
            '${APIMinhaVitrineGroup.baseUrl}/tbhorariofuncionamento/$idHorarioFuncionamento',
        callType: ApiCallType.PUT,
        headers: {
          'Authorization': 'Bearer $authToken',
        },
        params: {
          'horarioEntrada': horarioEntrada,
          'horarioSaida': horarioSaida,
          'almocoEntrada': almocoEntrada,
          'almocoSaida': almocoSaida,
          'diaDaSemana': diaDaSemana,
        },
        bodyType: BodyType.MULTIPART,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    HoraInterceptorPut(),
  ];
}

class HorarioFuncionamentoGetCall {
  Future<ApiCallResponse> call({
    String? nomeDia = '',
    String? authToken = '',
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'HorarioFuncionamentoGet',
        apiUrl:
            '${APIMinhaVitrineGroup.baseUrl}/horariofuncionamento/diadasemana',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer $authToken',
        },
        params: {
          'nomeDia': nomeDia,
        },
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    HoraInterceptorGet(),
  ];

  String? codeError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  int? idHorarioFuncionamento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class HorarioFuncionamentoDeleteCall {
  Future<ApiCallResponse> call({
    String? tbhorariofuncionamentoId = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HorarioFuncionamentoDelete',
      apiUrl:
          '${APIMinhaVitrineGroup.baseUrl}/tbhorariofuncionamento/$tbhorariofuncionamentoId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'authToken': authToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Minha Vitrine Group Code

class ViaCEPCall {
  static Future<ApiCallResponse> call({
    String? cepVariavel = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Via CEP',
      apiUrl: 'viacep.com.br/ws/$cepVariavel/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class CadastrarHorarioCall {
  static Future<ApiCallResponse> call({
    String? horarioEntrada = '',
    String? horarioSaida = '',
    String? entradaAlmoco = '',
    String? saidaAlmoco = '',
    String? diaDaSemana = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrarHorario',
      apiUrl:
          'https://x1he-6est-du25.n7c.xano.io/api:JaNPac-e/tbhorariofuncionamento',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'horarioEntrada': horarioEntrada,
        'horarioSaida': horarioSaida,
        'almocoEntrada': entradaAlmoco,
        'almocoSaida': saidaAlmoco,
        'diaDaSemana': diaDaSemana,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? idEmpresa(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tbempresa_id''',
      ));
  static String? horarioEntrada(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.horariaEntrada''',
      ));
  static String? horarioSaida(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.horarioSaida''',
      ));
  static String? entradaAlmoco(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.entradaAlmoco''',
      ));
  static String? saidaAlmoco(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.saidaAlmoco''',
      ));
  static String? diaDaSemana(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.diaDaSemana''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
