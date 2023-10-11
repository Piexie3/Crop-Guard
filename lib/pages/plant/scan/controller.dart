import 'dart:io';
import 'dart:typed_data';

import 'package:crop_guard/common/widgets/pick_image.dart';
import 'package:crop_guard/pages/plant/scan/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ScanController extends GetxController {
  ScanController();
  // variables here will not change over time
  final state = ScanState();
  Uint8List? file;

  void clearImage() {
    file = null;
    update();
  }

  void getImage() async {
    final pickfile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickfile != null) {
      state.selectedImagePath.value = pickfile.path;
      state.selectedImageSize.value = "${((File(state.selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)} Mb";
    } else {
      Get.snackbar(
        "Error",
        "No image Selected",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  }

  // void selectImage() {
  //   Get.dialog(
  //     SimpleDialog(
  //       title: const Text('Create a post'),
  //       children: [
  //         SimpleDialogOption(
  //             padding: const EdgeInsets.all(20),
  //             child: const Text("Take a photo"),
  //             onPressed: () async {
  //               Get.back();
  //               Uint8List _file = await pickImage(
  //                 ImageSource.camera,
  //               );
  //               file = _file;
  //               update();
  //             }),
  //         SimpleDialogOption(
  //           padding: const EdgeInsets.all(20),
  //           child: const Text("Choose from gallery"),
  //           onPressed: () async {
  //             Get.back();
  //             Uint8List _file = await pickImage(
  //               ImageSource.gallery,
  //             );
  //             file = _file;
  //             update();
  //           },
  //         ),
  //         SimpleDialogOption(
  //           padding: const EdgeInsets.all(20),
  //           child: const Text("Cancel"),
  //           onPressed: () {
  //             Get.back();
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }
}


// return showDialog(
//       context: context,
//       builder: (context) {
//         return SimpleDialog(
//           title: const Text('Create a post'),
//           children: [
//             SimpleDialogOption(
//                 padding: const EdgeInsets.all(20),
//                 child: const Text("Take a photo"),
//                 onPressed: () async {
//                   Navigator.of(context).pop();
//                   Uint8List file = await pickImage(
//                     ImageSource.camera,
//                   );
                  
//                 }),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text("Choose from gallery"),
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 Uint8List file = await pickImage(
//                   ImageSource.gallery,
//                 );
               
//               },
//             ),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text("Cancel"),
//               onPressed: () {
//                Get.back();
//               },
//             ),
//           ],
//         );
//       },
//     );
  