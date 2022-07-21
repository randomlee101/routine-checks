import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routine_checks/scheduler/config.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:routine_checks/ui/screens/add_new_routine.dart';
import 'package:routine_checks/ui/screens/list_all_routines.dart';
// import 'package:workmanager/workmanager.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  // await Workmanager().initialize(SchedulerConfig.callBackDispatcher(), isInDebugMode: kDebugMode);
  // await SchedulerConfig.printSomething("Hello World");
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
