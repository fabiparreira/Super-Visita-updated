import 'package:super_visita/data/rest_data.dart';
import 'package:super_visita/models/supervisor.dart';
import 'package:super_visita/screens/login_page.dart';

abstract class LoginPageContract {
  void onLoginSuccess(Supervisor supervisor);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

  doLogin(String emailSuper, String senhaSuper) {
    api
        .login(emailSuper, senhaSuper)
        .then((supervisor) => _view.onLoginSuccess(supervisor))
        .catchError((onError) => _view.onLoginError(onError.toString()));
  }
}