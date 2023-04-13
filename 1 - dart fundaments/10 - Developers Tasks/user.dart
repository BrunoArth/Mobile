import 'task.dart';

abstract class User {
  final int _id;
  final String _name;
  String _mail;
  String _phone;
  String _login;
  String _pass;
  List<Task> _tasks;

  get id => this._id;

  get name => this._name;

  get mail => this._mail;

  set mail(value) => this._mail = value;

  get phone => this._phone;

  set phone(value) => this._phone = value;

  get login => this._login;

  set login(value) => this._login = value;

  get pass => this._pass;

  set pass(value) => this._pass = value;

  get tasks => this._tasks;

  set tasks(value) => this._tasks = value;

  User(this._id, this._name, this._mail, this._phone, this._login, this._pass,
      this._tasks) {}

  fazerLogin(String login, String email) {}
}
