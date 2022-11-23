void main() {
  var num = NumberList();
  print(num.getNumber("234 ww 3 sds"));
}

class NumberList {
  List getNumber(str) {
    List ans = [];
    str.split(' ').forEach((element) {
      try {
        ans.add(int.parse(element));
      } catch (e) {
        
      }
    });
    return ans;
  }
}
