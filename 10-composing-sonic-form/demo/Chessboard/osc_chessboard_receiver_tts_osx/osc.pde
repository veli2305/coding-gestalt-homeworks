
import oscP5.*;
import netP5.*;

String localhost = "127.0.0.1";
String remotehost = "127.0.0.1";
int localport = 12000;
int remoteport = 12001;

String[] oscAddress =  { "/chess/cellLeft", "/chess/cellEntered" };
String[] oscMethod  =  { "cellLeft", "cellEntered" };

OscP5 osc;

void setupOSC() {
  
   // initialize OSC
   osc = new OscP5(this, localport);
   
   // plug osc messages into callback methods
   for(int i = 0; i < oscAddress.length; i++) {
     osc.plug(this, oscMethod[i], oscAddress[i]);
   }
   
}

  
public void cellLeft(int x, int y) {
  println("RECEIVE: Cell Left (" + x + ", " + y +")");
}

public void cellEntered(int x, int y) {
  println("RECEIVE: Cell Entered (" + x + ", " + y +")");
  ttsEvent(x, y);
}

// Show which OSC events were received but ignored
void oscEvent(OscMessage msg) {
  if(!msg.isPlugged()) {
    println("Unhandled OSC message " + msg.addrPattern() + "(" + msg.typetag());
  }
}

