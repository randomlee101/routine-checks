import 'package:hive/hive.dart';
import 'package:routine_checks/model/model.dart';
import 'package:uuid/uuid.dart';

class RoutineRepository {
  late BoxCollection collection;
  late CollectionBox<RoutineModel> routines;
  Uuid uuid = const Uuid();

  RoutineRepository() {
    initialize();
  }

  initialize() async {
    collection =
        await BoxCollection.open("my_database", {"routines"}, path: './');
    routines = await collection.openBox<RoutineModel>("routines");
  }

  findRoutines() async {
    return await routines.getAllValues();
  }

  findRoutine({String? key}) async {
    return await routines.get(key!);
  }

  addRoutine({RoutineModel? routineModel}) async {
    return await routines.put(uuid.v1(), routineModel!);
  }

  deleteRoutine({String? key}) async {
    return await routines.delete(key!);
  }

  updateRoutine({String? key, RoutineModel? routineModel}) async {
    return await routines.put(key!, routineModel!);
  }
}
