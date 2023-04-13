class ProgrammingLanguagens {
  final String _name;
  String _type;
  double _version;

  ProgrammingLanguagens(this._name, this._type, this._version) {}

  set setVersion(double version) {
    this._version = version;
  }

  String get getName {
    return this._name;
  }

  String get getType {
    return this._type;
  }

  double get getVersion {
    return this._version;
  }
}
