import 'package:aprendizado/bindings/button.binding.dart';
import 'package:aprendizado/views/home.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

var routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];
