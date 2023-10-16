import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_select_and_watch/Providers/object_provider.dart';
import 'package:provider_select_and_watch/models/cheap_class.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
      (provider) => provider.cheapObject,
    );
    
    return Container(
      height: 100,
      color: Colors.yellow,
      child: Column(
        children: [
          const Text('Cheap widget'),
          const Text('Last update'),
          Text(cheapObject.lastUpdate),
        ],
      ),
    );
  }
}
