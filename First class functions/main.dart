// optional named parameter
String formatter1(String val, {bool html = false}) => html ? '<span>$val</span>' : val;

// optional positional parameter
String formatter2(String val, [bool html = false]) => html ? '<span>$val</span>' : val;

main() {
  // inline functions
  galacticCoord() => 'milky way';
  print(galacticCoord());
  
  if (true) {
    //function scoped to 'if block' overriding previous declartion
    galacticCoord() => 'Earth: override milky way';
    print(galacticCoord());
    
    // pass functions as parameters
    destination(Function f) => 'Let\'s warp to... ' + f();
    print(destination(galacticCoord));
    
    // alternative inline function syntax
    var shortTrek = (i) => i*i;
    print(shortTrek(9));
  }
  
  // optionals
  print(formatter1('Star Trek', html: true));
  print(formatter2('Star Trek: Deep Space Nine', false));
}