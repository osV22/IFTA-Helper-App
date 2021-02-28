import 'package:get/get.dart';

class NavController extends GetxController {
  final _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;

  updateIndex(int count) {
    this._selectedIndex.value = count;
  }
}
