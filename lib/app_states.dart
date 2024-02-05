class appstates {
  int counter;
  appstates({required this.counter});
}

class initstates extends appstates {
  initstates(): super(counter: 0); //initializing counter = 0; via super constructor.
}


//OR (this is also correct)

/* class appstates {
  int counter;
  appstates({this.counter=0});

} */