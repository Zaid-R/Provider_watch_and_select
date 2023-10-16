import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider_select_and_watch/models/cheap_class.dart';
import 'package:provider_select_and_watch/models/expensive_class.dart';
import 'package:uuid/uuid.dart';

class ObjectProvider extends ChangeNotifier {
  late String id;
  late CheapObject _cheapObject;
  late StreamSubscription _cheapObjectStream;
  late ExpensiveObject _expensiveObject;
  late StreamSubscription _expensiveObjectStream;

  ObjectProvider()
      : id = const Uuid().v4(),
        _cheapObject = CheapObject(),
        _expensiveObject = ExpensiveObject() {
    start();
  }

  CheapObject get cheapObject => _cheapObject;

  ExpensiveObject get expensiveObject => _expensiveObject;

  void start() {
    _cheapObjectStream =
        Stream.periodic(const Duration(seconds: 1)).listen((_) {
      //Creating a new CheapObject every second
      //(since CheapObject extends the class BaseObject which is immutable so you can't change feilds inside a CheapObject Instance)
      _cheapObject = CheapObject();
      notifyListeners();
    });

    _expensiveObjectStream =
        Stream.periodic(const Duration(seconds: 10)).listen((_) {
      _expensiveObject = ExpensiveObject();
      notifyListeners();
    });
  }

  void stop() {
    _cheapObjectStream.cancel();
    _expensiveObjectStream.cancel();
  }

  @override
  void notifyListeners() {
    id = const Uuid().v4();
    super.notifyListeners();
  }
}
