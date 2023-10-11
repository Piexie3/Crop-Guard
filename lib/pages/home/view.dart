import 'package:crop_guard/common/routes/names.dart';
import 'package:crop_guard/common/widgets/next_button.dart';
import 'package:crop_guard/pages/home/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildBlogs(context),
              _buildBlogs(context),
              _buildBlogs(context),
              _buildBlogs(context),
              _buildBlogs(context),
              _buildBlogs(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBlogs(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.explore),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 166,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF1E1E1E), Color(0x7F353933)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 36,
              offset: Offset(0, 15),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 9,
              left: 17,
              bottom: 9.14,
              child: Container(
                width: 108,
                height: 147.86,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 108,
                      height: 147.86,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/plant_sample.jpg',
                          ),
                          // NetworkImage("https://via.placeholder.com/108x148"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 136,
              top: 10,
              child: Column(
                children: [
                  Text(
                    'Swiss cheese Plant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 186,
                    child: Text(
                      "Small plants, like succulents and air plants, are perfect for adding greenery to your desk or your nightstand.Note: You still can use regular Navigator functions like 'pushNamed' but be sure to check the argument routeAndNavigatorSettings your PersistentBottomNavBarItem for route settings and some other navigator related properties To push a new screen, use the following functions to control the visibility of bottom navigation bar on a particular screen. You can use your own logic to implement platform-specific behavior. One of the solutions could be to use the property withNavBar and toggle it according to the Platform. ",
                      style: TextStyle(
                        color: Color(0xFFB5B5B5),
                        fontSize: 10,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 8,
                    ),
                  )
                ],
              ),
            ),
            NextButton(
              ontap: () => Get.toNamed(
                AppRoutes.scan,
              ),
            )
          ],
        ),
      ),
    );
  }

 
}
