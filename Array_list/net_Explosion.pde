void netExplosion(int x, int y) {
  for (int i=0; i< firework.length; i++) {
    firework[i] = new Firework(x, y, 0, 0, 0);
  }
}
