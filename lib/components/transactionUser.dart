import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: "t1",
        title: "Novo tênis de corrida",
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: "t2", title: "Conta de luz", value: 211.30, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionList(_transactions),
      TransactionForm(),
    ]);
  }
}
