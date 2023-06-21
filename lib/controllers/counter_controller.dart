import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(['1']);
  }
}

/**
 * ! State Management with GetX
 * * Our class should extend GetxController
 * * For telling other that we have updated the data
 * $ update(['id'])
 * * Only widgets with the specified id like above and widgets with no id will be rebuilt
 */
