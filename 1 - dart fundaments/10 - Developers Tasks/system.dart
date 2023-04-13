import 'dart:io';

import 'bd.dart';
import 'full.dart';
import 'junior.dart';
import 'senior.dart';
import 'user.dart';

class System {
  Bd bd = new Bd();
  bool stop = false;
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
          if (element is Senior) {
            menu(this.bd.getUser);
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

  menu(users) {
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
          menuUsuarios(this.bd.getUser);
        } else if (i == 2) {
          menuProjetos(this.bd.getUser);
        } else if (i == 3) {
          login();
        }
      }
    }
  }

  menuProjetos(users) {
    this.stop = false;
    while (!stop) {
      print("MENU Projetos");
      print("1 - Listar projetos");
      print("2 - Ver projeto detalhado");
      print("3 - Editar projeto");
      print("4 - Entregar projeto");
      print("5 - Adicionar uma task");
      print("6 - Receber task");
      print("7 - Entregar task");
      print("8 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
        } else if (i == 2) {
        } else if (i == 8) {
          menu(this.bd.getUser);
        }
      }
    }
  }

  menuUsuarios(users) {
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
          listarUsuarios(this.bd.getUser);
        } else if (i == 2) {
          listarSeniors(this.bd.getUser);
        } else if (i == 3) {
          listarFulls(this.bd.getUser);
        } else if (i == 4) {
          listarJuniors(this.bd.getUser);
        } else if (i == 5) {
          contratarFuncionario(this.bd.getUser);
        } else if (i == 6) {
          demitirFuncionario();
        } else if (i == 7) {
          menu(this.bd.getUser);
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
      print("3 - Entregar projeto");
      print("4 - Adicionar uma task");
      print("5 - Receber task");
      print("6 - Entregar task");
      print("7 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
        } else if (i == 2) {
        } else if (i == 7) {
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
      print("3 - Entregar projeto");
      print("4 - Adicionar uma task");
      print("5 - Receber task");
      print("6 - Entregar task");
      print("7 - Voltar");
      String? input = stdin.readLineSync();
      if (input != null) {
        int i = int.parse(input);
        if (i == 1) {
        } else if (i == 2) {
        } else if (i == 7) {
          login();
        }
      }
    }
  }

  listarUsuarios(List<User> users) {
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

  listarSeniors(List<User> users) {
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

  listarFulls(List<User> users) {
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

  listarJuniors(List<User> users) {
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

  contratarFuncionario(List<User> users) {
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
            .add(new Junior(novoId(users), name, mail, phone, login, pass, []));
      } else if (codInt == 2) {
        this
            .bd
            .getUser
            .add(new Full(novoId(users), name, mail, phone, login, pass, []));
      } else if (codInt == 3) {
        this
            .bd
            .getUser
            .add(new Senior(novoId(users), name, mail, phone, login, pass, []));
      }
      print("Cadastro conculido!");
    }
  }

  int novoId(List<User> users) {
    int length = this.bd.getUser.length;
    return this.bd.getUser[length - 1].id + 1;
  }

  demitirFuncionario() {
    listarFulls(this.bd.getUser);
    listarJuniors(this.bd.getUser);
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
            menuUsuarios(this.bd.getUser);
          }
        }
      });
      print("ID Inválido");
    }
  }
}
