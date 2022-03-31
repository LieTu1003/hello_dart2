//变量(https://dart.cn/samples#variables)
import 'dart:io';

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

void main(List<String> args) async {
  variables();
}
