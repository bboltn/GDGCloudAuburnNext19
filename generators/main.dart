class StarShip {
  int warpNacelles;
  String name;
  
  StarShip(this.name, this.warpNacelles);
  
  // example of a synchronus generator
  // We'll show an async generator later.
  Iterable<int> engage(int warpFactor) sync* {
  	int currentWarp = 1;
  	while (currentWarp < warpFactor) {
      currentWarp = currentWarp * warpNacelles;
      yield currentWarp;
    }
	}
}

void main() {
  var enterprise = StarShip('Enterprise', 2);
  
  for(var warp in enterprise.engage(8)) {
    print('Current Warp: $warp');
  }
}