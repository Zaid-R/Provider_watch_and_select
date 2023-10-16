// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseObject {
  final String id;
  final String lastUpdate;

  BaseObject()
      : id = const Uuid().v4(),
        lastUpdate = DateTime.now().toIso8601String();

  @override
  bool operator == (covariant BaseObject other)=> id == other.id;

  @override
  int get hashCode => id.hashCode;
}
