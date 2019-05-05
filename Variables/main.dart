void main() {
  // infer type
  var star = 'trek';
  
  // Declare type
  String discovery = 'tvshow';
  
  // final - set once
  final String trek = 'next gen $star';

  // const - compile time constant
  const tos = 'original';
  
  // error: const tos = 'original $trek';
  
  // string interpolation
  print('Star: $star, Discover: $discovery, Trek: $trek, TOS: $tos');
}