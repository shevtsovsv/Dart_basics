import 'dart:math';

void main() {
  Point point = Point(0, 0, 0);
  print(point.distanceTo(3, 4, 0));
  print(point.distancePToP(3, 4, 3, 0, 0, 3));
  Point spont = Point.createPoint(type: "onez");
  spont.display();
}

class Point {
  num x;
  num y;
  num z;
  static Point staticPoint = Point(0, 0, 0);
  Point(this.x, this.y, this.z);

  num distanceTo(x, y, z) {
    num ans =
        sqrt(pow(this.x - x, 2) + pow(this.y - y, 2) + pow(this.z - z, 2));
    return ans;
  }

  num distancePToP(x1, y1, z1, x2, y2, z2) {
    num ans = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
    return ans;
  }

  num perimeter(x1, y1, z1, x2, y2, z2, x3, y3, z3) {
    num ans = (distancePToP(x1, y1, z1, x2, y2, z2) +
        distancePToP(x1, y1, z1, x3, y3, z3) +
        distancePToP(x3, y3, z3, x2, y2, z2));
    return ans;
  }

  num area(x1, y1, z1, x2, y2, z2, x3, y3, z3) {
    num p = perimeter(x1, y1, z1, x2, y2, z2, x3, y3, z3) / 2;
    num l12 = distancePToP(x1, y1, z1, x2, y2, z2);
    num l13 = distancePToP(x1, y1, z1, x3, y3, z3);
    num l23 = distancePToP(x3, y3, z3, x2, y2, z2);
    num ans = sqrt((p - l12) * (p - l13) * (p - l23) * p);
    return ans;
  }
  void display(){
        print("X:$x Y:$y Z:$z ");
    }

  factory Point.createPoint({required String type}) {
    if (type == "null") {
      staticPoint = Point(0, 0, 0);
    } else if ((type == "one")) {
      staticPoint = Point(1, 1, 1);
    } else if ((type == "onex")) {
      staticPoint = Point(1, 0, 0);
    } else if ((type == "oney")) {
      staticPoint = Point(0, 1, 0);
    } else if ((type == "onez")) {
      staticPoint = Point(0, 0, 1);
    }
    return staticPoint;
  }
}
