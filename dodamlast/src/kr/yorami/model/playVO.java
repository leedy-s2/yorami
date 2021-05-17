package kr.yorami.model;

public class playVO {
private int state;

public playVO () {}

public playVO(int state) {
   super();
   this.state = state;
}

public int getState() {
   return state;
}

public void setState(int state) {
   this.state = state;
}

}