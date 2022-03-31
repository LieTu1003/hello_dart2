//代码写完后需要进行规范化 format document
//导入(https://dart.cn/samples#imports)
import 'dart:math';
import 'dart:io';

//变量(https://dart.cn/samples#variables)
void variables() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': "//path/to/saturn.jpg"
  };
  print(
      "name is $name,year is $year,antennaDiameter is $antennaDiameter,flybyObjects is $flybyObjects");
}

//流程控制语句(https://dart.cn/samples#control-flow-statements)
void control() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': "//path/to/saturn.jpg"
  };
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
  for (final object in flybyObjects) {
    print(object);
  }
  for (int month = 1; month <= 12; month++) {
    print(month);
  }
  while (year < 2016) {
    year += 1;
  }
}

//函数(https://dart.cn/samples#functions)
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

//类(https://dart.cn/samples#classes)
class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate) {}
  Spacecraft.unlaunched(String name) : this(name, null);
  void describe() {
    print('Spacecraft:$name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched:$launchYear($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

//扩展类(https://dart.cn/samples#inheritance)
class Orbiter extends Spacecraft {
  double altitute;
  Orbiter(String name, DateTime launchDate, this.altitute)
      : super(name, launchDate);
}

//Mixins(https://dart.cn/samples#mixins)
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

void main(List<String> args) async {
  //变量
  variables();
  //流程控制语句
  control();
  //函数
  var result = fibonacci(20);
  print(result);
  //类的调用
  var voyager = Spacecraft("Voyager Ⅰ", DateTime(1977, 9, 5));
  voyager.describe();
  var voyager3 = Spacecraft.unlaunched('Voyager Ⅲ');
}
