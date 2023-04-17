import 'programmingLanguagens.dart';
import 'task.dart';

class Project {
  int id;
  String _name;
  String _status;
  final DateTime _dataInicio;
  DateTime _dataPrazo;
  List<Task> _tasks;
  List<ProgrammingLanguagens> _programmingLanguagens;

  String get name => this._name;

  set name(String value) => this._name = value;

  get status => this._status;

  set status(value) => this._status = value;

  get dataInicio => this._dataInicio;

  get dataPrazo => this._dataPrazo;

  set dataPrazo(value) => this._dataPrazo = value;

  get tasks => this._tasks;

  set tasks(value) => this._tasks = value;

  get programmingLanguagens => this._programmingLanguagens;

  set programmingLanguagens(value) => this._programmingLanguagens = value;

  Project(this.id, this._name, this._status, this._dataInicio, this._dataPrazo,
      this._programmingLanguagens, this._tasks) {}

  addTask(Task task) {
    this._tasks.add(task);
  }

  removeTask(int id) {
    this._tasks.remove(id);
  }

  addProgrammingLanguagens(ProgrammingLanguagens programmingLanguagens) {
    this._programmingLanguagens.add(programmingLanguagens);
  }

  deleteProgrammingLanguagens(int id) {
    this._programmingLanguagens.remove(id);
  }

  taskLength() {
    return this._tasks.length;
  }
}
