void main() {
  var num = PrimeFactors();
  print(num.getPrimeFactors(120));
}

class PrimeFactors {
  List getPrimeFactors(n) {
    var Ans = [];
    var d = 2;
    while (d * d <= n)
      if (n % d == 0) {
        Ans.add(d);
        n ~/= d;
      } else {
        d += 1;
      }

    if (n > 1) {
      Ans.add(n);
    }

    return Ans;
  }
}
