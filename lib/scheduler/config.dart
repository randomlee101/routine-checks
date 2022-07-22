import 'package:routine_checks/database/routine_db/routine_db_repo.dart';
import 'package:routine_checks/logic/logic.dart';
import 'package:routine_checks/model/model.dart';
import 'package:routine_checks/service_locator.dart';
import 'package:uuid/uuid.dart';
import 'package:workmanager/workmanager.dart';

class SchedulerConfig {
  static final RoutineRepository _repository = locator.get<RoutineRepository>();

  static Duration setFrequencyForReminder(String? frequency) {
    switch (frequency) {
      case "hourly":
        return const Duration(minutes: 55);
      case "daily":
        return const Duration(hours: 23, minutes: 55);
      case "monthly":
        return const Duration(days: 29, hours: 23, minutes: 55);
      case "yearly":
        return const Duration(days: 364, hours: 23, minutes: 55);
      default:
        return const Duration(seconds: 10);
    }
  }

  static Duration setFrequencyForActualWork(String? frequency) {
    switch (frequency) {
      case "hourly":
        return const Duration(hours: 1);
      case "daily":
        return const Duration(hours: 24);
      case "monthly":
        return const Duration(days: 30);
      case "yearly":
        return const Duration(days: 365);
      default:
        return const Duration(seconds: 15);
    }
  }

  static setReminder(String id, String frequency) {
    Workmanager().registerPeriodicTask(Uuid().v1(), "reminder",
        inputData: {"id": id}, frequency: setFrequencyForReminder(frequency));
  }

  static doActualWork(String id, String frequency) {
    Workmanager().registerPeriodicTask(Uuid().v1(), "actual_work",
        inputData: {"id": id}, frequency: setFrequencyForActualWork(frequency));
  }

  static reminder(String id) async
  {
    // var routine = RoutineModel.fromJson(Map<String, dynamic>.from(await RoutineRepository.findRoutine(key: id)));
    print("Upcoming Routine In Five Minutes: $id");
  }

  static actualWork(String id) async
  {
    // var routine = RoutineModel.fromJson(Map<String, dynamic>.from(await RoutineRepository.findRoutine(key: id)));
    print("It is time to get to your $id routine. Hurry up, it will be marked as miss if not checked in 5 minutes");
  }
}
