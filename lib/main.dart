import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routine_checks/scheduler/config.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:routine_checks/ui/screens/list_all_routines.dart';
import 'package:workmanager/workmanager.dart';

void callBackDispatcher() {

  Workmanager().executeTask((task, input) {
    switch(task)
    {
      case "reminder":
        SchedulerConfig.reminder(input?.values.first);
        break;
      case "actual_work":
        SchedulerConfig.actualWork(input?.values.first);
        break;
      default:
        print("Unknown Task: $task");
    }

    return Future.value(true);
  });

}
void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  Workmanager().initialize(callBackDispatcher, isInDebugMode: kDebugMode);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListAllRoutines(),
      debugShowCheckedModeBanner: false,
    );
  }
}
