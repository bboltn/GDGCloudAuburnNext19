// Mission...
// T is the value type
class Mission<T> {
  T missionType;
  String start;
  String destination;
  
  // generic method
  T getMission() => missionType;
  
  Mission(T this.missionType, this.start, this.destination);
  @override
  String toString() => 'Mission: Type: $missionType, start: $start, destination: $destination';
}

class Science {
  String fieldOfStudy;
}

// Science mission...
class ScienceMission<T extends Science> extends Mission {
  ScienceMission(T science, String start, String destination) : super(science, start, destination);
}

class AstroPhysics extends Science {}

main() {
  var deliveryDilithium = Mission<String>('Dilithium Delivery', 'Earth', 'Vulcan');
  print(deliveryDilithium);
  
  var exploreMission = Mission<Science>(Science(), 'Earth', 'Andoria');
  print(exploreMission);
  
  var astroPhysicsMission = ScienceMission<AstroPhysics>(AstroPhysics(), 'Alpha  Quadrant', 'Beta Quadrant');
  print(astroPhysicsMission);
  
 // error: does not extend Science
 // var astroPhysicsMission = ScienceMission<int>(1, 'www.source1.com', 'www.destination1.com');
}