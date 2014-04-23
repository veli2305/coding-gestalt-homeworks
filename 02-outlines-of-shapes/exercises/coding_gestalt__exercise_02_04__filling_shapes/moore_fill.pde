
class MooreFill {

  
  Stack<int[]> trace = new Stack();

  int[] pos = {-1, -1};
  
  // set the origin of the filling spree
  void setStart(int x, int y) {
    pos = new int[] { x, y };
  }

  
  int[][] getNeighbors() {
    int x = pos[0];
    int y = pos[1];
    int[][] nbs = new int[8][];
    nbs[0] = new int[] { x - 1, y };
    
   nbs[1] = new int[] { x - 1, y-1};
    
    nbs[2] = new int[] { x, y - 1 };
    nbs[3] = new int[] { x + 1, y-1 };
    nbs[4] = new int[] { x+1, y  };
    nbs[5] = new int[] { x+1, y+1 };
    nbs[6] = new int[] { x , y+1 };
    nbs[7] = new int[] { x-1, y + 1 };
    
    
    
    return nbs;
  }
  
  
  // move to the next pixel
  int[] getNext() {
    pos = trace.peek();
    return pos;
  }


  int hasNext() {
    
    int[][] nbs = getNeighbors();
    
    // if we find a free pixel push it to the stack
    for (int i = 0; i < 8; i++) {
      int[] nb = nbs[i];
      if ( get(nb) == fg_color ) {
        trace.push(nb);
        return TRUE;
      }
    }
    
    // otherwise pop from the stack and try again (later)
    if(!trace.empty()) {
      pos = trace.pop();
      return MAYBE;
    }
    
    // give up
    return FALSE;
    
  }
  

}


