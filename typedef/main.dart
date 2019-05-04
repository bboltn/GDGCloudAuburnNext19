class StarShip {
  double deckCount; // number of decks on the ship
  int phaserCount;
  double warpNacelles;
  String name;
  @override
  String toString() => 'Ship: Name: $name, Deck: $deckCount, Phaser: $phaserCount, Nacelles: $warpNacelles';
}

// any function that wants to build star ships, must conform to this signature
typedef StarShipBuilder = StarShip Function(int crewCapacity, int maxWarp, bool isWarship);

// generic space station factory that lets any company build star ships
StarShip spaceStationFactory(StarShipBuilder builder) {
  return builder(100, 8, true);
}

// The federation builders make a roomier, with redundant nacelles and less weapons
StarShip FederationBuilder(int crewCapacity, int maxWarp, bool isWarship) {
  return StarShip()
    ..warpNacelles=maxWarp / 2
    ..phaserCount=isWarship ? 5 : 0
    ..deckCount=crewCapacity/20;
}

// The klingon builders make cramped quarters, with less nacelles and more weapons
StarShip KlingonBuilder(int crewCapacity, int maxWarp, bool isWarship) {
  return StarShip()
    ..warpNacelles=maxWarp / 4
    ..phaserCount=isWarship ? 20 : 10
    ..deckCount=crewCapacity/100;
}

void main() {
  var enterprise = spaceStationFactory(FederationBuilder)..name='Enterprise';
  var coldRevenge = spaceStationFactory(KlingonBuilder)..name='Cold Revenge';
  
  print(enterprise);
  print(coldRevenge);
}