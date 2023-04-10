enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true),
  mars(planetType: PlanetType.terrestrial, moons: 2, hasRings: true),
  jupyter(planetType: PlanetType.gas, moons: 92, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main(List<String> args) {
  final yourPlanet = Planet.jupyter;

  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }else{
    print('Your planet is a "GIANT PLANET!!!".');
  }
}
