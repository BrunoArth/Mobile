import 'project.dart';
import 'user.dart';

class Task {
  final int _idTask;
  String _nameTask;
  String _statusTask;
  final DateTime _dataInicioTask;
  DateTime _dataPrazoTask;
  List<User> _usersTask;
  final Project _projectTask;

  get idTask => this._idTask;

  get nameTask => this._nameTask;

  set nameTask(value) => this._nameTask = value;

  get statusTask => this._statusTask;

  set statusTask(value) => this._statusTask = value;

  get dataInicioTask => this._dataInicioTask;

  get dataPrazoTask => this._dataPrazoTask;

  set dataPrazoTask(value) => this._dataPrazoTask = value;

  get usersTask => this._usersTask;

  set usersTask(value) => this._usersTask = value;

  get projectTask => this._projectTask;

  Task(this._idTask, this._nameTask, this._statusTask, this._dataInicioTask,
      this._dataPrazoTask, this._usersTask, this._projectTask) {}

  addUser(User user) {
    this._usersTask.add(user);
  }

  removeUser(int idUser) {
    this._usersTask.remove(idUser);
  }
}
