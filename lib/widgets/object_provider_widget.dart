import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_select_and_watch/Providers/object_provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final providerID = context.select<ObjectProvider,String>(
      (provider)=>provider.id
    );

    return Container(
      height: 100,
      color: Colors.purple,
      child: Column(
        children: [
          const Text('Object Provider widget'),
          const Text('ID'),
          Text(providerID),
        ],
      ),
    );
  }
}