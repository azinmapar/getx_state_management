import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}

/**
 * ! State Management with GetX
 * * Our class should extend GetxController
 * * For telling other that we have updated the data
 * $ update()
 */
