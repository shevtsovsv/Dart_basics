void main() {
  var num = NumberSystems();
  print(num.getBinaryNumber(127));
  print(num.getDcimalNumber('10001'));
}

class NumberSystems {
  String getBinaryNumber(n) {
    var ans = '';
    while (n > 0) {
      ans = (n % 2).toString() + ans;
      n ~/= 2;
    }
    return ans;
  }

  int getDcimalNumber(n) {
    int ans = 0;
    int l = n.length;
    var s = 1;
    for (var i = l - 1; i > -1; i--) {
      ans += int.parse(n[i]) * s;
      s *= 2;
    }
    return ans;
  }
}
