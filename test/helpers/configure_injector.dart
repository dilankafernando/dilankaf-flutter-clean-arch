import 'package:flutter_clean_arch/core/utils/constants.dart';
import 'package:flutter_clean_arch/injector.dart';

Future<void> configureInjector() async {
  await configureDependencies(environment: Environment.test);
}
