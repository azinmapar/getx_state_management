import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/counter_controller.dart';

class Screen1 extends StatelessWidget {
  final controller = Get.put(CounterController());

  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (value) {
              return Text(
                controller.counter.toString(),
                style: const TextStyle(fontSize: 30.0),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/screen2');
              },
              child: const Text('Screen 2'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
