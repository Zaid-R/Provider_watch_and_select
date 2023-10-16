import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_select_and_watch/Providers/object_provider.dart';
import 'package:provider_select_and_watch/models/expensive_class.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
      (provider) => provider.expensiveObject,
    );
    
    return Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          const Text('Expensive widget'),
          const Text('Last update'),
          Text(expensiveObject.lastUpdate),
        ],
      ),
    );
  }
}
