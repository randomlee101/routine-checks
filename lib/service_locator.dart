import 'package:get_it/get_it.dart';
import 'package:routine_checks/logic/logic.dart';

GetIt locator = GetIt.instance;

serviceLocator()
{
    locator.registerLazySingleton(() => RoutineLogicBLoC());
}