import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_clean_arch/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib', 'test'])
Future<void> configureDependencies({required String environment}) async =>
    getIt.init(environment: environment);
