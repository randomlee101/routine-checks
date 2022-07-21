import 'package:routine_checks/model/model.dart';
import 'package:rxdart/rxdart.dart';

class RoutineLogicBLoC
{
    final BehaviorSubject<String> _title = BehaviorSubject<String>();
    final BehaviorSubject<String?> _description = BehaviorSubject<String?>();
    final BehaviorSubject<String> _frequency = BehaviorSubject<String>();
    final BehaviorSubject<bool> _checked = BehaviorSubject<bool>();
    final BehaviorSubject<List<RoutineModel>> _allRoutines = BehaviorSubject<List<RoutineModel>>();

    Stream<String> get title => _title.stream;
    Stream<String?> get description => _description.stream;
    Stream<String> get frequency => _frequency.stream;
    Stream<bool> get checked => _checked.stream;
    Stream<List<RoutineModel>> get allRoutines => _allRoutines.stream;

    addTitle(String? e) => _title.sink.add(e!);
    addDescription(String? e) => _description.sink.add(e);
    addFrequency(String? e) => _frequency.sink.add(e!);
    addChecked(bool? e) => _checked.sink.add(e!);
    addAllRoutines(List<RoutineModel> e) => _allRoutines.sink.add(e);

    RoutineModel get routineBody => RoutineModel.fromJson({
      "title": _title.value,
      "description": _description.valueOrNull,
      "frequency": _frequency.value,
      "checked": _checked.valueOrNull ?? false
    });

    dispose() async
    {
      await _title.drain();
      await _description.drain();
      await _frequency.drain();
      await _checked.drain();
    }
}