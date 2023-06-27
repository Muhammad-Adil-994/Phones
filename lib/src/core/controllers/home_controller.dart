import 'package:get/get.dart';
import '../../ui/home_body.dart';
import '../../ui/profile_screen.dart';
import '../../ui/categories_screen.dart';

class HomeController extends GetxController {
  final pages = [
    HomeBody(),
    Second(),
    Profile(),
  ];
  final RxInt currentindex = 1.obs;
  void increment(int value) {
    currentindex.value = value;
  }
}
