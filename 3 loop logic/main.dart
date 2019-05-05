void main() {
  var i = 0;
  
  print('--While Example--');
  
  while (i < 6) {
    if (i == 5) {
      print('Five');
    } else if (i == 4) {
      print('Four');
    } else {
      print('i: $i');
    }
    i++;
  }
  
  print('--Classic For Loop--');
  
  var lst = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (var i = 0; i < lst.length; i++) {
    if (lst[i] == 4) break;
    print('i: ${lst[i]}');
  }
  
  print('--Collection For Loop--');
  
  for (var i in lst) {
    if (i >= 4) continue;
    print('i: $i');
  }
  
  print('--Iterable forEach Loop--');
  
  lst.forEach((i) => print('i: $i'));
  
  print('--Switch/Case--');
  
  var starship = 'enterprise';
  switch (starship) {
    case 'enterprise':
      print(starship);
      break;
    case 'voyager':
      print(starship);
      break;
    default:
      print('not found');
  }
}