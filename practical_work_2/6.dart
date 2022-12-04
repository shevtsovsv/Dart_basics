void main() {
  var num = NumberFromString();
  print(num.getNumberFromString("two ww two two 3 ww five 3 sds"));
}

class NumberFromString {
  Set getNumberFromString(str) {
    Set ans = <int>{};
    var number = <String, int>{
      "zero": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9,
    };
    str.split(' ').forEach((element) {
      if (number.containsKey(element)) {
        ans.add(number[element]);
      }
    });
    return ans;
  }
}
