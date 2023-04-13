import 'full.dart';
import 'junior.dart';
import 'project.dart';
import 'senior.dart';
import 'user.dart';

class Bd {
  List<User> _users = [
    new Senior(
        0, 'Admin', 'admin@admin.com', '00000-0000', 'admin', 'admin', []),
    new Full(1, 'full', 'full@full.com', '00000-000', 'full', 'full', []),
    new Junior(
        2, 'junior', 'junior@juior.com', '00000-000', 'junior', 'junior', [])
  ];

  List<Project> projects = [];

  List<Project> get getProjects => this.projects;

  set setProjects(List<Project> projects) => this.projects = projects;

  List<User> get getUser {
    return this._users;
  }

  set setUser(List<User> users) => this._users = users;
}
