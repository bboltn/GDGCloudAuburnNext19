import 'dart:async';

Future sendToFuture(int year, String person) async {
  return new Future.delayed(Duration(milliseconds: year), () {
    print('>> ' + person + ' has arrived in the year $year');
  });
}

Future<int> whatYearIsIt() async {
  return new Future.delayed(Duration(milliseconds: 1500), () {
    return 2255;
  });
}

void main() async {
  sendToFuture(3205, 'Michael Burnham');//displays last
  print('time traveler sent!'); //displays first  
  
  var year = whatYearIsIt();
  print('This is a future, not a value: ' + year.toString());//displays second
  print('This is the value: ' + (await year).toString());//displays third
  
  // await blocks until future is returned
  await sendToFuture(3205, 'Sylvia Tilly');
  
  print('>> Send Tilly before showing this message');
  
  whatYearIsIt().then((year) {
    print('>>> $year');
  });
  print('The year is...');
}
