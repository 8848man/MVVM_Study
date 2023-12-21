import 'package:project_for_mvvm/models/counter_model.dart';

class HomeViewModel {
  String title = "First Page";

  var counterModel = CounterModel();

  getCounter() {
    return counterModel.count;
  }

  inc() {
    counterModel.count++;
  }
}
