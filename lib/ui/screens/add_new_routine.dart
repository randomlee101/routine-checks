import 'package:flutter/material.dart';
import 'package:routine_checks/database/routine_db/routine_db_repo.dart';
import 'package:routine_checks/logic/logic.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:routine_checks/ui/widgets/custom_text_field.dart';

class AddNewRoutine extends StatelessWidget {
  AddNewRoutine({Key? key}) : super(key: key);

  final RoutineLogicBLoC routineLogicBLoC = locator.get<RoutineLogicBLoC>();
  final RoutineRepository routineRepository = locator.get<RoutineRepository>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Routine"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 25),
        child: Column(
          children: [
            PlainTextField(label: "Title", stream: routineLogicBLoC.title, onChanged: routineLogicBLoC.addTitle),
            PlainTextField(label: "Description", stream: routineLogicBLoC.description, onChanged: routineLogicBLoC.addDescription),
            PlainTextField(label: "Frequency", stream: routineLogicBLoC.frequency, onChanged: routineLogicBLoC.addFrequency),
            TextButton(onPressed: ()async{
              routineRepository.addRoutine(routineModel: routineLogicBLoC.routineBody);
              // print(await routineRepository.findRoutines());
              routineLogicBLoC.dispose();
              Navigator.pop(context);
            }, child: const Text("Add Routine"))
          ],
        ),
      ),
    );
  }
}
