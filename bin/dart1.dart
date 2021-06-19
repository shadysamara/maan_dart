import 'dart:io';

import 'package:dart1/dart1.dart' as dart1;

void main(List<String> arguments) {
  ////////////////////
  ///data structure
  int x = 9;
  double y = 9.0;
  num z = 9;
  int age = 9;
  int gpa = 99;
  String address = 'Gaza';
  String name = 'Omar';
  bool isRegisted = false;
  // print('Hello my name is ' +
  //     name +
  //     ', i am $age, i live in $address and i hhave $gpa in my school');
  var list = <String>['ahmed', 'mohammed', 'hassan'];
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // list.forEach((element) {
  //   print(element);
  // });
  for (String x in list) {}

  /// define list of integers, then using any for loop apprach print the summation of
  /// list items
  List<int> nums = [1, 2, 3, 4, 5, 6];
  int sum = 0;
  nums.forEach((element) {
    sum += element;
  });

  ////////////////////
  ///reduce
  int result = nums.reduce((value, element) {
    return value + element;
  });

  String fullName = list.reduce((value, element) {
    return value + ' ' + element;
  });

////////////////////
  ///mapping
  List<int> namesLettersCount = list.map((element) {
    return element.length;
  }).toList();

  // using map method, get the square value of each element in the numbers list
  List<int> squares = nums.map((e) {
    return e * e;
  }).toList();

  ///////////////////
  /// list methods
  nums.isEmpty;
  nums.isNotEmpty;
  List filteredList = nums.where((element) => element > 4).toList();
  ///////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////
  ////// Maps
  Map<String, dynamic> map = {
    'name': 'omar',
    'age': 9,
    'isMale': true,
    'freinds': ['ahmed', 'majd', 'hassan'],
    'family': {'brother': 'majd', 'sister': 'farah'}
  };
  Map<String, List<num>> studentsGrades = {
    'omar': [99, 98, 100, 99],
    'osama': [77, 78, 70, 50],
    'majd': [90, 88, 99, 100],
    'yousef': [88, 77, 99, 66]
  };

  map.putIfAbsent('mName', () => 'shaker');
  Map<String, num> studentAveragesMap = studentsGrades.map((key, value) {
    List<num> grades = value;
    num average = grades.reduce((value, element) {
          return value + element;
        }) /
        grades.length;
    return MapEntry<String, num>(key, average);
  });
  print(studentAveragesMap);
  studentAveragesMap.values.toList();
  studentAveragesMap.containsKey('name');
  studentAveragesMap.containsValue('omar');

  ///////////////////////////////////
  ///// Functions
  var methodResult = summation(1, 2);

  var methodResult2 = summation2(2);
  var methodResult3 = summation3(num2: 6, num1: 2);

  String fullName2 = getFullName(name: 'omar');
  print(fullName2);

  int x2 = makeNumberInMinus(0);
  print(x2);

  ///// using optional parameters, define method  that take full name as lower case and return
  /// it as camel case => omar ahmed ali => Omar Ahmed Ali
}

/*
1- method signeture
- return type
- method name
- prameters or arguments

2- method body
*/
// positional parameters
int summation(int num1, int num2) {
  return num1 + num2;
}

// optional positional paramters
int summation2([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

// optional named paramters
int summation3({int num1 = 0, int num2 = 0}) {
  return num1 + num2;
}

int summation4(int num1, {int num2 = 0}) {
  return num1 + num2;
}

String getFullName({String name = ''}) {
// omar ali hassan
  try {
    if (name.length > 0) {
      List<String> words = name.split(' ');
      List<String> modefiedWords = words.map((e) {
        String newWord = e[0].toUpperCase() + e.substring(1);
        return newWord;
      }).toList();
      return modefiedWords.reduce((value, element) => value + ' ' + element);
    } else {
      return 'Not Defined';
    }
  } catch (error) {
    print('an error occured');
  } finally {
    print('this is code which will be excuted in all situations');
  }
}

// 1=>-1
// -1=>1
int makeNumberInMinus(int num) {
  try {
    assert(num != 0);
    return num * -1;
  } catch (e) {
    print('you cant pass zero to me');
  }
}
