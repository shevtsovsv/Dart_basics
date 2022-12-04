void main() {
  var num = Numbers();
  print(num.gcd(21, 77));
  print(num.lcm(11, 3));
}

class Numbers {
  int gcd(a, b) {
    int c;
    if (a < b) {
      c = a;
      a = b;
      b = c;
    }
    while (b != 0) {
      a %= b;
      c = a;
      a = b;
      b = c;
    }
    return a;
  }

  int lcm(a, b) {
    return a * b ~/ gcd(a, b);
  }
}
