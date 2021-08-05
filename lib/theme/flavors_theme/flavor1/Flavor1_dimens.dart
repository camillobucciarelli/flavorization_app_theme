import 'package:flavorization_app_theme/theme/dimens.dart';

class Flavor1Dimens extends Dimens {
  static const _instance = Flavor1Dimens._internal();

  static Flavor1Dimens get instance => _instance;

  const Flavor1Dimens._internal();

  @override
  get buttonHeight => 60.0;

  @override
  get buttonRadius => 4.0;

  @override
  get padding => 8.0;

}
