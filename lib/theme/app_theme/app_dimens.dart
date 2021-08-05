import 'package:flavorization_app_theme/theme/dimens.dart';

class AppDimens extends Dimens {
  static const _instance = AppDimens._internal();

  static AppDimens get instance => _instance;

  const AppDimens._internal();

  @override
  get buttonHeight => 50.0;

  @override
  get buttonRadius => 20.0;

  @override
  get padding => 16.0;

}
