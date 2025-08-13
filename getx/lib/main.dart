import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}

void main() {
  runApp(GetMaterialApp(home: CounterApp(), debugShowCheckedModeBanner: false));
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter")),
      body: Center(
        child: Obx(
          () => Text(
            'Count: ${controller.count}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            onPressed: controller.increment,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: null,
            onPressed: controller.decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

/*
using GetX for state management
mainly suitable for small Apps
no set state needed
*/
