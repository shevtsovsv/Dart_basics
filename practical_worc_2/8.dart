void main() {
  print(27.getSQRT(3));
}

extension SQRT on num {
  num getSQRT(k) {
    num n = this;
    double eps = 0.00001; 
    num root = n / k; 
    num rn = n; 
    num m = root > rn ? root - rn : rn - root;
    while (m >= eps) {
      rn = n;
      for (int i = 1; i < k; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
      m = root > rn ? root - rn : rn - root;
    }

    return root;
  }
}
