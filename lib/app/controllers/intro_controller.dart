import 'package:get/get.dart';

class IntroController extends GetxController {
  final index = 0.obs;
  List text = [
    "Now Chat with \nAstrologers",
    "Now Call with \nAstrologers",
    "First Chat with \nAstrologers is free",
  ];
  RxBool isDone = false.obs;

  @override
  void onClose() {}
  void increment() => index.value++;
}
