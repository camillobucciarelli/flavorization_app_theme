enum Env { DEV, QA, PROD }

extension $StringEnv on String {
  Env get toEnv => {"DEV": Env.DEV, "QA": Env.QA, "PROD": Env.PROD}[this] ?? Env.DEV;
}

class Environment {
  static const String _stringEnv = String.fromEnvironment('env', defaultValue: 'DEV');
  static final Env env = _stringEnv.toEnv;

  static String get baseUrl =>
      {
        Env.DEV: 'https://dev.be.com',
        Env.QA: 'https://qa.be.com',
        Env.PROD: 'https://prod.be.com',
      }[env] ?? '';
}
