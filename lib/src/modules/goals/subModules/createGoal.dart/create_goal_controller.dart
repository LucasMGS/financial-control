import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateGoalController extends GetxController {
  late XFile goalImage;
  late ImagePicker imagePicker;

  @override
  void onInit() {
    imagePicker = ImagePicker();
    super.onInit();
  }
}
