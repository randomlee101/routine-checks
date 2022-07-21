import 'dart:io';

import 'package:hive/hive.dart';
import 'package:routine_checks/logic/logic.dart';
import 'package:routine_checks/model/model.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:uuid/uuid.dart';
import 'package:path_provider/path_provider.dart';

class RoutineRepository {
  BoxCollection? collection;
  Directory? directory;
  static final RoutineLogicBLoC _routineLogicBLoC = locator.get<RoutineLogicBLoC>();
  static CollectionBox<Map>? routines;
  static Uuid uuid = const Uuid();

  RoutineRepository() {
    initialize();
  }

  initialize() async {
    directory = await getApplicationDocumentsDirectory();
    print(directory?.path);
    collection =
        await BoxCollection.open("my_database", {"routines"}, path: directory?.path);
    routines = await collection?.openBox<Map>("routines");
  }

  findRoutines() async {
    _routineLogicBLoC.addAllRoutines( ((await routines?.getAllValues())?.cast().values.map((e) => RoutineModel.fromJson(Map<String, dynamic>.from(e))).toList() ?? []));
  }

  findRoutine({String? key}) async {
    return await routines?.get(key!);
  }

  addRoutine({RoutineModel? routineModel}) async {
    String id = uuid.v1();
    await routines?.put(id, routineModel!.copyWith(id: id).toJson());
    await findRoutines();
  }

  deleteRoutine({String? key}) async {
    return await routines?.delete(key!);
  }

  updateRoutine({String? key, RoutineModel? routineModel}) async {
    await routines?.put(key!, routineModel!.toJson());
    await findRoutines();
  }

  clearAll() async
  {
    await routines?.flush();
    await routines?.clear();
    print("done");
  }
}
