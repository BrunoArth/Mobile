import 'classes.dart';

class MockSpaceship implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {}

  @override
  int? get launchYear => throw UnimplementedError();
}
