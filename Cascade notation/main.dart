class TvShow  {
  String title;
  String producer;
  String director;
  Set<String> actors;
  int length;
  
  @override
  String toString() => 'TvShow: title: $title';
}

main() {
  var show1 = TvShow();
  show1.title = 'Star Trek: The Next Generation';
  show1.producer = 'Gene Roddenberry';
  show1.director = 'Corey Allen';
  show1.actors = {'Patrick Stewart', 'John de Lancie'};
  show1.length = 92;
  
  print(show1);
  
  // with cascade notation
  // less writting, and you don't need to write a constructor
  var show2 = TvShow()
    ..title = 'Star Trek: The Next Generation'
    ..producer = 'Gene Roddenberry'
    ..director = 'Corey Allen'
    ..actors = {'Patrick Stewart', 'John de Lancie'}
  	..length = 92;
  
  print(show2);
}