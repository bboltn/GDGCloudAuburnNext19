class Tvshow {
  // instance variables
  String name;
  String producer;
  int episodeCount;
  
  // constructor
  Tvshow(n, p, e) {
    name = n;
    producer = p;
    episodeCount = e;
  }
  
  // named constructor
  Tvshow.create0(n, p, e) {
    name = n;
    producer = p;
    episodeCount = e;
  }
  
  // using this to omit constructor body
  Tvshow.create1(this.name, this.producer, this.episodeCount);

  @override //overriding method
  String toString() => 'TvShow: $name, $producer, $episodeCount';

  // method
  int nameLength1() {
    return name.length;
  }
}

void main() {
  var tng = Tvshow('Star Trek: The Next Generation', 'Gene Roddenberry', 178);
  print(tng);
  print(tng.nameLength1());
}