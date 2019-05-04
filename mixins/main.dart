// give behavior to classes with mixins
mixin Phasers {
  void power() => print('Phaser set to stun');
  void blast() => print('phaser blast');
}

mixin PhotonTorpedo {
  void launch() => print('photon torpedo launch');
}

mixin WarpNacelle {
  void power() => print('Dilithium Crystal');
  void warp(int factor) => print('warp factor $factor!');
}

// order important when mixins have same function names
class StarShip with Phasers, PhotonTorpedo, WarpNacelle {
  String name;
  String designation;
}

void main() {
  var enterprise = StarShip()
    ..name='USS Enterprise'
    ..designation='NCC-1701-D';
  
  enterprise.blast();
  enterprise.launch();
  enterprise.warp(9);
  enterprise.power();
}