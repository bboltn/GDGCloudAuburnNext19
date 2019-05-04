import 'dart:async';

Stream<String> timeTravelers() async* {
  	var travelers = ['Michael Burhnam', 'Sylvia Tilly', 'Saru', 'Gabrielle Burnham'];
    
    for(var traveler in travelers) {
      await new Future.delayed(Duration(seconds: 2));
      if (traveler == 'Gabrielle Burnham') throw 'Time crystal broke! $traveler sent to wrong year!';
      // async generator
      yield traveler;
    };
}

void main() async {
  print('Time gate open!');
  timeTravelers().listen((String traveler) {
  	print('Traveler $traveler has arrived');
	}, onDone: () {
  	print('Time gate closed');
	}, onError: (e) {
  	print('ERROR: '  + e);
	});
}
