class Show {
 String _title;
 final String _producer;
 
 //initializer list
 Show(this._title) : _producer = 'Gene';
 
 String get title => _title;
 void set title(String value) => _title = value;
  
  String get producer => _producer;
}

void main() {
  print('--Initialize List--');
  var startrek = Show('Star Trek: The Next Generation');
  print(startrek.title);
  print(startrek.producer);
}