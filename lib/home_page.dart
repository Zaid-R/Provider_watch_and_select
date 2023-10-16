import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_select_and_watch/Providers/object_provider.dart';
import 'package:provider_select_and_watch/widgets/cheap_widget.dart';
import 'package:provider_select_and_watch/widgets/expensive_widget.dart';
import 'package:provider_select_and_watch/widgets/object_provider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: CheapWidget(),
                ),
                Expanded(
                  child: ExpensiveWidget(),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(child: ObjectProviderWidget()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => context.read<ObjectProvider>().stop(),
                  child: const Text('Stop'),
                ),
                TextButton(
                  onPressed: () => context.read<ObjectProvider>().start(),
                  child: const Text('Start'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
