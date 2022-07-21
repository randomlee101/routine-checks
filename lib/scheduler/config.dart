// import 'package:workmanager/workmanager.dart';
//
// class SchedulerConfig
// {
//   static callBackDispatcher()
//   {
//     Workmanager().executeTask((task, input){
//
//       print(input);
//
//       return Future.value(true);
//     });
//   }
//
//   static printSomething(String text)
//   {
//     Workmanager().registerOneOffTask("uniqueName", "taskName", inputData: {text: text},existingWorkPolicy: ExistingWorkPolicy.replace, initialDelay: const Duration(seconds: 10));
//   }
// }