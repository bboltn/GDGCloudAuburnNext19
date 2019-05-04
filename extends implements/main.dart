class Show {
 String _title;
 String _producer;
  
 Show(this._title, this._producer);
 
 int length() => _title.length;
}

class TvShow extends Show {
 TvShow(String title, String producer) : super(title, producer);
 
 @override
 int length() => this._producer.length;
}

abstract class Video {
  bool play();
  bool nextTrack();
  bool prevTrack();
}

class Movie implements Video {
  @override
  bool play() => true;
  @override
  bool nextTrack() => true;
  @override
  bool prevTrack() => true;
}

void main() {
  print('--Extends--');
  var tng = Show('Star Trek: The Next Generation', 'Gene Roddenberry');
  print(tng.length()); //30

  var tng2 = TvShow('Star Trek: The Next Generation', 'Gene Roddenberry');
  print(tng2.length()); //16
  
  print('--Implements--');
  var searchSpock = Movie();
  print(searchSpock.play());
}