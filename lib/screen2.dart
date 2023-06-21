import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/counter_controller.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
                id: '1',
                builder: (value) {
                  return Text(
                    controller.counter.toString(),
                    style: const TextStyle(fontSize: 30.0),
                  );
                }),
            ElevatedButton(
              onPressed: () {
                // * Next page (Normal Mode)
                Get.toNamed('/screen3');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text('Screen 3'),
            )
          ],
        ),
      ),
    );
  }
}
