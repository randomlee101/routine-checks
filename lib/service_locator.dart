import 'package:get_it/get_it.dart';
import 'package:routine_checks/database/routine_db/routine_db_repo.dart';
import 'package:routine_checks/logic/logic.dart';

GetIt locator = GetIt.instance;

serviceLocator()
{
    locator.registerLazySingleton(() => RoutineLogicBLoC());
    locator.registerLazySingleton(() => RoutineRepository());
}