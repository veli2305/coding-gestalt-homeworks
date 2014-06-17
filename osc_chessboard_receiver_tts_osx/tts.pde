import guru.ttslib.*;
TTS tts;

// Inspired by Kurt Schwitters (Ursonate)
String[][] words = {
  {"it was my first time", "i had to run faster", "in the last minute", "but now i understand", "as i said before"},
  {"i saw the ocean so far away", "of course i did not believe that", "there was a war going on outside", "that was all i had to say", "things were getting weirder"},
  {"there was another house on fire", "so...i called you and said", "i forgot about everything else", "it was full of people", "after that"},
  {"i was so tired", "what was going on?", " all of a sudden ","just before midnight"," i saw it all", "oh boy!"}
};

String[] voices = { "Alex", "Bubbles", "Pipe Organ"};

int xwords = words[0].length;
int ywords = words.length;
int xvoices = voices.length;

void setupTTS() {
   // nothing to do here ...
}

void ttsEvent(int x, int y) {
  
  String voiceStr = "default";
  
  switch(voice) {
    case 0: voiceStr = voices[0]; break;
    case 1: voiceStr = voices[1]; break;
    case 2: voiceStr = voices[2]; break;
    case 3: voiceStr = voices[1 + (x + y) % 2]; break;
  }
  
  String[]  cmd = { "say", "-v", voiceStr,  words[y % ywords][x % xwords] }; 
  exec(cmd);
  
}
