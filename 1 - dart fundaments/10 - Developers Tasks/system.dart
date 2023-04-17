import 'dart:io';

import 'bd.dart';
import 'full.dart';
import 'junior.dart';
import 'programmingLanguagens.dart';
import 'project.dart';
import 'senior.dart';
import 'task.dart';
import 'user.dart';

class System {
  Bd bd = new Bd();
  bool stop = false;
  User user = new Junior(0, "", "", "", "", "", []);
  System() {
    login();
  }

  login() {
    while (!this.stop) {
      print("---BEM-VNDO---");
      print("Insira seus dados");
      print("Login: ");
      String? login = stdin.readLineSync();
      print("Senha: ");
      String? pass = stdin.readLineSync();

      this.bd.getUser.forEach((element) {
        if (element.login == login && element.pass == pass) {
          this.stop = true;
          print("Logando!");
          this.user = element;
          if (element is Senior) {
            menu();
          } else if (element is Full) {
            menuProjetosFull();
          } else if (element is Junior) {
            menuProjetosJunior();
          }
        }
      });
      if (!this.stop) {
        print("Login Invalido, tente novamente...");
      }
    }
  }

  menu() {
    this.stop = false;
    while (!this.stop) {
      print("MENU");
      print("1 - Usuarios");
      print("2 - Projetos");
      print("3 - Sair");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
          menuUsuarios();
        } else if (i == 2) {
          menuProjetos();
        } else if (i == 3) {
          login();
        }
      }
    }
  }

  menuProjetos() {
    this.stop = false;
    while (!stop) {
      print("MENU Projetos");
      print("1 - Listar projetos");
      print("2 - Ver projeto detalhado");
      print("3 - Editar projeto");
      print("4 - Entregar projeto");
      print("5 - Adicionar projetos");
      print("6 - Adicionar uma task");
      print("7 - Receber task");
      print("8 - Entregar task");
      print("9 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
          listarProjetos();
        } else if (i == 2) {
          verProjetoDetalhado();
        } else if (i == 3) {
          editarProjeto();
        } else if (i == 4) {
          entregarProjeto();
        } else if (i == 5) {
          addPojeto();
        } else if (i == 6) {
          addTask();
        } else if (i == 9) {
          menu();
        }
      }
    }
  }

  menuUsuarios() {
    this.stop = false;
    while (!this.stop) {
      print("MENU USUARIOS");
      print("1 - Lista todos os usuarios");
      print("2 - Lista todos os seniors");
      print("3 - Lista todos os plenos");
      print("4 - Lista todos os juniors");
      print("5 - Contratar funcionario");
      print("6 - Demitir funcionario");
      print("7 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
          listarUsuarios();
        } else if (i == 2) {
          listarSeniors();
        } else if (i == 3) {
          listarFulls();
        } else if (i == 4) {
          listarJuniors();
        } else if (i == 5) {
          contratarFuncionario();
        } else if (i == 6) {
          demitirFuncionario();
        } else if (i == 7) {
          menu();
        }
      }
    }
  }

  menuProjetosJunior() {
    this.stop = false;
    while (!stop) {
      print("MENU Projetos - User Junior");
      print("1 - Listar projetos");
      print("2 - Ver projeto detalhado");
      print("3 - Receber task");
      print("4 - Entregar task");
      print("5 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
          listarProjetos();
        } else if (i == 2) {
          verProjetoDetalhado();
        } else if (i == 3) {
          receberTask();
        } else if (i == 4) {
          entregarTask();
        } else if (i == 5) {
          login();
        }
      }
    }
  }

  menuProjetosFull() {
    this.stop = false;
    while (!stop) {
      print("MENU Projetos - User Full-");
      print("1 - Listar projetos");
      print("2 - Ver projeto detalhado");
      print("3 - Adicionar uma task");
      print("4 - Receber task");
      print("5 - Entregar task");
      print("6 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
          listarProjetos();
        } else if (i == 2) {
          verProjetoDetalhado();
        } else if (i == 3) {
          addTask();
        } else if (i == 4) {
          receberTask();
        } else if (i == 5) {
          entregarTask();
        } else if (i == 7) {
          login();
        }
      }
    }
  }

  listarUsuarios() {
    print("----Lista de usuarios----");
    print("-ID- -Nome------- -Cargo");
    this.bd.getUser.forEach((element) {
      int id = element.id;
      String name = element.name;
      String cargo;
      if (element is Senior) {
        cargo = "Senior";
      } else if (element is Full) {
        cargo = "Pleno";
      } else {
        cargo = "Junior";
      }
      print(" $id - $name -   Dev $cargo ");
    });
  }

  listarSeniors() {
    print("----Lista de seniors----");
    print("-ID- -Nome-------");
    this.bd.getUser.forEach((element) {
      int id = element.id;
      String name = element.name;

      if (element is Senior) {
        print(" $id - $name - ");
      }
    });
  }

  listarFulls() {
    print("----Lista de plenos----");
    print("-ID- -Nome-------");
    this.bd.getUser.forEach((element) {
      int id = element.id;
      String name = element.name;

      if (element is Full) {
        print(" $id - $name - ");
      }
    });
  }

  listarJuniors() {
    print("----Lista de juniors----");
    print("-ID- -Nome-------");
    this.bd.getUser.forEach((element) {
      int id = element.id;
      String name = element.name;

      if (element is Junior) {
        print(" $id - $name - ");
      }
    });
  }

  contratarFuncionario() {
    print("-Contratar novo funcionario");
    print("Nome: ");
    String? name = stdin.readLineSync();
    print("Email: ");
    String? mail = stdin.readLineSync();
    print("Telefone: ");
    String? phone = stdin.readLineSync();
    print("Login: ");
    String? login = stdin.readLineSync();
    print("Senha: ");
    String? pass = stdin.readLineSync();
    print("Cargo:");
    print("1 - Junior");
    print("2 - Pleno");
    print("3 - Senior");
    String? cod = stdin.readLineSync();
    if (cod != null &&
        name != null &&
        mail != null &&
        phone != null &&
        login != null &&
        pass != null) {
      int codInt = int.parse(cod);
      if (codInt == 1) {
        this
            .bd
            .getUser
            .add(new Junior(novoId(), name, mail, phone, login, pass, []));
      } else if (codInt == 2) {
        this
            .bd
            .getUser
            .add(new Full(novoId(), name, mail, phone, login, pass, []));
      } else if (codInt == 3) {
        this
            .bd
            .getUser
            .add(new Senior(novoId(), name, mail, phone, login, pass, []));
      }
      print("Cadastro conculido!");
    }
  }

  int novoId() {
    int length = this.bd.getUser.length;
    return this.bd.getUser[length - 1].id + 1;
  }

  demitirFuncionario() {
    listarFulls();
    listarJuniors();
    print("Digite o id do usuario a ser demitido");
    String? id = stdin.readLineSync();
    if (id != null) {
      int intId = int.parse(id);
      this.bd.getUser.forEach((element) {
        if (element.id == intId) {
          if (element is Senior) {
            print("Esse usuário não pode ser demitido");
          } else {
            this.bd.getUser.remove(element);
            print("Demitido!!!");
            menuUsuarios();
          }
        }
      });
      print("ID Inválido");
    }
  }

  listarProjetos() {
    print("----Lista de projetos----");
    print("-ID- -Nome------- -Status");
    this.bd.getProjects.forEach((element) {
      int id = element.id;
      String name = element.name;
      String status = element.status;
      print(" $id - $name -   $status ");
    });
  }

  verProjetoDetalhado() {
    listarProjetos();
    print("Digite o id do projeto: ");
    String? input = stdin.readLineSync();
    if (input != null) {
      print("--Detalhes do projeto: $input--");
      int intId = int.parse(input);
      this.bd.getProjects.forEach((element) {
        if (element.id == intId) {
          int id = element.id;
          String name = element.name;
          String status = element.status;
          DateTime dataInicio = element.dataInicio;
          DateTime dataPrazo = element.dataPrazo;
          List<Task> tasks = element.tasks;
          List<ProgrammingLanguagens> programmingLanguagens =
              element.programmingLanguagens;
          print("Id: $id");

          print("Nome: $name");
          print("Status: $status");
          print("Data Inicio: $dataInicio");
          print("Data Prazo: $dataPrazo");
          print("Tasks:   ");
          for (int t = 0; t < tasks.length; t++) {
            String name = tasks[t].nameTask;
            String status = tasks[t].statusTask;
            DateTime dataInicio = tasks[t].dataInicioTask;
            DateTime dataPrazo = tasks[t].dataPrazoTask;
            List<User> users = tasks[t].usersTask;
            print("Nome: $name");
            print("Status: $status");
            print("Data Inico: $dataInicio");
            print("Data prazo: $dataPrazo");
            print("Usuários:   ");
            for (int u = 0; u < users.length; u++) {
              String name = users[u].name;
              print("Nome: $name");
            }
          }
          print("Linguagens utilzadas:   ");
          for (int t = 0; t < programmingLanguagens.length; t++) {
            String name = programmingLanguagens[t].getName;
            print("Nome: $name");
          }
        }
      });
    }
  }

  editarProjeto() {
    listarProjetos();
    print("Digite o id do projeto: ");
    String? idInput = stdin.readLineSync();
    if (idInput != null) {
      int idInputInt = int.parse(idInput);
      print("1 - Nome");
      print("2 - Data Prazo");
      print("3 - Linguagens");
      String? input = stdin.readLineSync();
      if (input != null) {
        int inputInt = int.parse(input);
        if (idInputInt < this.bd.getProjects.length) {
          this.bd.getProjects.forEach((element) {
            if (idInputInt == element.id) {
              if (inputInt == 1) {
                print("Digite o novo nome: ");
                String? newInput = stdin.readLineSync();
                if (newInput != null) {
                  element.name = newInput;
                }
              } else if (inputInt == 2) {
                print("Digite a nova data prazo: A/M/D ");
                String? newInput = stdin.readLineSync();
                if (newInput != null) {
                  var dateInput = DateTime.parse(newInput);
                  element.dataPrazo = dateInput;
                }
              } else if (inputInt == 3) {
                print("Adicione uma nova linguagem");
                print("Name: ");
                String? namePL = stdin.readLineSync();
                print("Versão: ");
                String? version = stdin.readLineSync();
                if (namePL != null && version != null) {
                  double versionD = double.parse(version);
                  element.addProgrammingLanguagens(
                      new ProgrammingLanguagens(namePL, "", versionD));
                }
              }
            }
          });
        } else {
          print("Id Invalido");
        }
      }
    }
  }

  entregarProjeto() {
    listarProjetos();
    print("Digite o id do projeto: ");
    String? idInput = stdin.readLineSync();
    if (idInput != null) {
      int idInputInt = int.parse(idInput);
      this.bd.getProjects.forEach((element) {
        if (element.id == idInputInt) {
          element.status = "Concluido";
          print("Projeto Concluido");
        }
      });
    }
  }

  addPojeto() {
    print("Adicione um novo projeto");
    print("Nome: ");
    String? nameInput = stdin.readLineSync();
    print("Data Prazo: ");
    String? dataPrazo = stdin.readLineSync();

    if (nameInput != null && dataPrazo != null) {
      DateTime dataPrazoDT = DateTime.parse(dataPrazo);
      this.bd.getProjects.add(new Project(this.bd.projects.length, nameInput,
          "em adamento", DateTime.now(), dataPrazoDT, [], []));
      print("Projeto criado!");
    }
  }

  addTask() {
    print("Adicionar TASK");
    listarProjetos();
    print("Digite o id a qual vai pertecer a task");
    String? idProjetc = stdin.readLineSync();
    if (idProjetc != null) {
      int idProjectInt = int.parse(idProjetc);
      this.bd.getProjects.forEach((element) {
        if (idProjectInt == element.id) {
          print("Nome: ");
          String? name = stdin.readLineSync();
          print("Data prazo");
          String? DP = stdin.readLineSync();
          listarJuniors();
          listarFulls();
          this.stop = false;
          List<User> u = [];
          while (!stop) {
            print("Digite o id para adicionar usuario");
            String? id = stdin.readLineSync();
            if (id != null) {
              int idInt = int.parse(id);
              if (idInt >= this.bd.getUser.length) {
                this.stop = true;
              } else {
                this.bd.getUser.forEach((element) {
                  if (idInt == element.id &&
                      (element is Junior || element is Full)) {
                    u.add(element);
                  }
                });
              }
            }
          }
          if (name != null && DP != null) {
            DateTime dp = DateTime.parse(DP);
            Task task = new Task(element.taskLength(), name, "Em adamento",
                DateTime.now(), dp, u, element);
            element.addTask(task);
            u.forEach((element) {
              this.bd.getUser.forEach((user) {
                if (element.id == user.id) {
                  user.addTask(task);
                }
              });
            });
          }
        }
      });
    }
    this.stop = false;
  }

  receberTask() {
    print("----Lista de tasks----");
    this.bd.getProjects.forEach((element) {
      List<Task> tasks = element.tasks;
      String name = element.name;
      print("Projeto: - $name");
      print("-ID- -Nome------- -Status--------");
      tasks.forEach((element) {
        int id = element.idTask;
        String name = element.nameTask;
        String status = element.statusTask;
        print(" $id - $name  -    $status -");
      });
      print("----------------------------------");
    });
  }

  entregarTask() {
    suasTasks();
    print("Digite o id a task a ser entrega");
  }

  suasTasks() {
    print("Suas task");

    List<Task> tasks = this.user.tasks;

    tasks.forEach((element) {
      int id = element.idTask;
      String name = element.nameTask;
      String status = element.statusTask;
      DateTime dataIncio = element.dataInicioTask;
      DateTime dataPrazo = element.dataPrazoTask;
      Project project = element.projectTask;
      String nameProject = project.name;
      print("Id: $id");
      print("Nome: $name");
      print("Status: $status");
      print("Projeto: $nameProject");
      print("data inicio: $dataIncio");
      print("data prazo: $dataPrazo");
      List<User> users = element.usersTask;
      users.forEach((element) {
        String name = element.name;
        print("Nome: $name");
      });
    });
  }
}
