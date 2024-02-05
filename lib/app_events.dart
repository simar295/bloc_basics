class appevents {}

//events are triggered from UI
//these are markers or signs of events , they dont do anything 
//its like , when i call these classes something (state change) will happen
//to change state , we will call one of these events
//and then bloc will change state of counter variable
//to connect event and states , we create bloc!
class incrementevent extends appevents{}
class decrementevent extends appevents{}