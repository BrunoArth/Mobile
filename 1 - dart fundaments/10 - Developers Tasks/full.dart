import 'junior.dart';
import 'task.dart';
import 'user.dart';

class Full extends User {
  Full(super.id, super.name, super.mail, super.phone, super.login, super.pass,
      super.tasks);

  tiraDuvida(String duvida, User user) {}
  entregarTask(Task task) {}
  pegarTask(Task task) {}
  atribuirTaskJunior(Task task, Junior junior) {}
}
