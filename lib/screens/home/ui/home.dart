import 'package:flutter/material.dart';
import '../../../features/particle/change_count/ui/change_count.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gravity Simulator'),
        ),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ChangeCount()])));
  }
}
