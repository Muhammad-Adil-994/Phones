import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Second Screen'),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                    // Get.bottomSheet(BottomSheet(
                    //     onClosing: () {},
                    //     builder: (context) => Text('sample')));
                  },
                  child: const Text('Go back'))
            ],
          ),
        ),
      ),
    );
  }
}
