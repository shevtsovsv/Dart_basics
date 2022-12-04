void main() {
  var num = NumberCount();
  print(num.getNumberCount("234 ww 3 ww 3 3 sds"));
}

class NumberCount {
  Map getNumberCount(str) {
    var ans = <String, int>{};
    str.split(' ').forEach((element) {
      if (!ans.containsKey(element)) {
        ans[element] = 1;
      } else {
        ans[element] = ans[element] !+ 1;
      }
    });
    return ans;
  }
}
