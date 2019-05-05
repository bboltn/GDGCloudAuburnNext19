void main () {
  
  //numbers
  int warpFactor = 2;
  print('Warp: $warpFactor');
  
  // strings
  String name = 'Enterprise';
  print('StarShip: $name');
  
  //booleans
  bool isShow = true;
  print('Does presenter like this show? ' + (isShow ? 'Yes' : 'No'));
  
  // list
  List shows = ['Star Trek: The Next Generation', 'Star Trek: Discovery'];
  print('TV Shows: $shows');
  
  // set
  Set actors = {'John de Lancie', 'Patrick Stewart'};
  print('Actors: $actors');
  
  // maps
  Map showLookup = {
    '1988': 'Star Trek: The Next Generation', 
    '2018' : 'Star Trek: Discovery',
  };
  print('Years to Show: $showLookup');
  
  //runes - UTF-32 code points of a string.
  var star = '\u{2B50}';
  print('Star: $star');
  
  //symbols - commonly used for reflection 
  // - operator/identifier used in dart - can be anything
  var insignia = Symbol('insignia');
  print('Badge $insignia');
}