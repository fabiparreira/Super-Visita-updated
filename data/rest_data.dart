import 'dart:async';

import 'package:super_visita/components/network_util.dart';
import 'package:super_visita/models/supervisor.dart';

class RestData {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<Supervisor> login(
      int idSuper, String nomeSuper, String emailSuper, String senhaSuper) {
    return new Future.value(
        new Supervisor(idSuper, nomeSuper, emailSuper, senhaSuper));
  }
}
