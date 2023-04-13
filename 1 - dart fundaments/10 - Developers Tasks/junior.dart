import 'task.dart';
import 'user.dart';

class Junior extends User {
  Junior(super.id, super.name, super.mail, super.phone, super.login, super.pass,
      super.tasks);

  tiraDuvida(String duvida, User user) {}
  entregarTask(Task task) {}
  pegarTask(Task task) {}
}
