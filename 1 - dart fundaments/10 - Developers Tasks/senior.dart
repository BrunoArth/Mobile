import 'junior.dart';
import 'full.dart';
import 'task.dart';
import 'user.dart';

class Senior extends User {
  Senior(super.id, super.name, super.mail, super.phone, super.login, super.pass,
      super.tasks);

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
