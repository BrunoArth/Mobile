import 'junior.dart';
import 'task.dart';
import 'user.dart';

class Full extends User {
  Full(int id, String name, String mail, String phone, String login, String pass, List<Task> tasks) : super(id, name, mail, phone, login, pass, tasks);

 

  tiraDuvida(String duvida, User user) {}
  entregarTask(Task task) {}
  pegarTask(Task task) {}
  atribuirTaskJunior(Task task, Junior junior) {}
}
