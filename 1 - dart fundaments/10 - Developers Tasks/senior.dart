import 'junior.dart';
import 'full.dart';
import 'task.dart';
import 'user.dart';

class Senior extends User {
  Senior(int id, String name, String mail, String phone, String login, String pass, List<Task> tasks) : super(id, name, mail, phone, login, pass, tasks);

  

  entregarTask(Task task) {}
  pegarTask(Task task) {}
  atribuirTaskJunior(Task task, Junior junior) {}
  atribuirTaskFull(Task task, Full junior) {}
  subirCargoJunior(Junior junior) {}
  subirCargoFull(Full full) {}
  descerCargoFull(Full full) {}
  demitirJunior(Junior junior) {}
  demitirFull(Full full) {}
  contratarJuior(Junior junior) {}
}
