// ignore_for_file: constant_identifier_names

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const INITIAL = _Paths.INITIAL;
  static const EMAILSIGNIN = _Paths.EMAILSIGNIN;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const INITIAL = '/initial';
  static const EMAILSIGNIN = '/emailsignin';
}
