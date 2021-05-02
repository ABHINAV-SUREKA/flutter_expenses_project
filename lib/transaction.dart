import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    @required this.id, // note: '@required' is not part of Dart but of Flutter (flutter/material.dart or flutter/foundation.dart)
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}