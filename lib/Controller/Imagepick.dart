
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class imagePickerController extends GetxController{

  RxString imagePath = ''.obs ;
  var description = ''.obs;
   
  Future getImagefromGallery() async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      Get.snackbar("Profile", "Sukses");
      imagePath.value = image.path.toString() ;
    }
  }

  Future getImagefromCamera() async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if(image != null){
      Get.snackbar("Profile", "Sukses");
      imagePath.value = image.path.toString() ;
    }
  }
}

// import 'package:get/get.dart';

// class UploadImageController extends GetxController {
//   var imagePath = ''.obs;
//   var description = ''.obs;

//   void setImagePath(String path) {
//     imagePath.value = path;
//   }

//   void setDescription(String text) {
//     description.value = text;
//   }

//   void uploadImage() {
//     // Lakukan apa pun yang diperlukan untuk mengunggah gambar dan data deskripsi
//     // (misalnya, kirim ke server atau simpan di lokal)

//     // Kemudian, Anda dapat memperbarui tampilan jika diperlukan.
//   }
// }
