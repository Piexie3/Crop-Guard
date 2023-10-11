import 'package:crop_guard/pages/plant/scan/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanPage extends GetView<ScanController> {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.file == null
        ? Center(
            child: IconButton(
              onPressed: () => controller.getImage(),
              icon: const Icon(Icons.upload),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              // backgroundColor: mobileBackgroundColor,
              leading: IconButton(
                onPressed: controller.clearImage,
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              title: const Text("Post to"),
              centerTitle: false,
              actions: [
                TextButton(
                  // onPressed: () => onPostPressed(
                  //   user.uid,
                  //   user.username,
                  //   user.photoUrl,
                  // ),
                  onPressed: () {},
                  child: const Text(
                    "post",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                // _isLoading
                //     ? const LinearProgressIndicator()
                //     : const Padding(
                //         padding: EdgeInsets.only(top: 0),
                //       ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //     user.photoUrl,
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.56,
                    //   child: TextField(
                    //     controller: _decriptionController,
                    //     decoration: const InputDecoration(
                    //       hintText: "write a caption...",
                    //       border: InputBorder.none,
                    //     ),
                    //     maxLines: 8,
                    //     style: const TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w200,
                    //     ),
                    //   ),
                    // ),

                    Obx(
                      () => SizedBox(
                        height: 45,
                        width: 45,
                        child: AspectRatio(
                          aspectRatio: 487 / 451,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: MemoryImage(controller.file!),
                                fit: BoxFit.fill,
                                alignment: FractionalOffset.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}
