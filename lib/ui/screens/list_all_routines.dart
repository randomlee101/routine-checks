import 'package:flutter/material.dart';
import 'package:routine_checks/database/routine_db/routine_db_repo.dart';
import 'package:routine_checks/logic/logic.dart';
import 'package:routine_checks/model/model.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:routine_checks/ui/screens/add_new_routine.dart';

class ListAllRoutines extends StatelessWidget {
  ListAllRoutines({Key? key}) : super(key: key);

  final RoutineRepository routineRepository = locator.get<RoutineRepository>();
  final RoutineLogicBLoC routineLogicBLoC = locator.get<RoutineLogicBLoC>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
     print("ffs");
      await routineRepository.findRoutines();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Routines"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewRoutine()));
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: StreamBuilder(
        stream: routineLogicBLoC.allRoutines,
        builder: (context, snapshot) {
          List<RoutineModel> allRoutines = snapshot.data as List<RoutineModel>;
          print("All Routines $allRoutines");
          return SingleChildScrollView(
            child: Column(
              children: allRoutines.map((e) => CheckboxListTile(value: e.checked,onChanged: (f) {routineRepository.updateRoutine(key: e.id, routineModel: e.copyWith(checked: f!));},title: Text(e.title), subtitle: Text(e.description ?? "", maxLines: 2, overflow: TextOverflow.ellipsis),)).toList(),
            ),
          );
        }
      ),
    );
  }
}
