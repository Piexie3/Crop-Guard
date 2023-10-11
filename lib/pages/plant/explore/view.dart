import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:crop_guard/pages/plant/explore/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorePage extends GetView<ExploreController> {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    List cards = [
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
      _exploreCard(),
    ];
    return Scaffold(
      body: SafeArea(
        // color: Colors.purple.shade700,
        child: Stack(
          children: [
            // while using Custom Scroll view you are able to use many slivers but in listview you cannot
            //slivers help in performance improvements
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 225, 5, 203),
                      )),
                  centerTitle: false,
                  expandedHeight: 150,
                  pinned: true,
                  title: Text("Crop Guard"),
                  flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                    children: [
                      Image.asset(
                        'assets/images/plant_image.jpg',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Positioned(
                        bottom: 50,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Hello ',
                                children: [
                                  TextSpan(
                                    text: "Emmanuel",
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  )
                                ],
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 250, 19),
                                fontSize: 14,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Help Us To Save Our Mother Earth',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 250, 19),
                                fontSize: 18,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: _treestypes(),
                      ),
                    ],
                  )),
                  actions: [
                    AnimSearchBar(
                      width: 260,
                      textController: controller.searchController,
                      onSubmitted: (submited) {},
                      onSuffixTap: () => controller.searchClear(),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 212, 212, 212),
                                spreadRadius: 0.1,
                                blurRadius: 1,
                                offset: Offset(0, 0),
                              ),
                            ]),
                        child: const Icon(Icons.settings),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 212, 212, 212),
                              spreadRadius: 0.1,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.notifications),
                      ),
                    ),
                  ],
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                      childCount: cards.length,
                      (context, index) => cards[index]),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _exploreCard() {
    return Container(
      width: 160,
      height: 242,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 1,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 40,
            child: Image.asset(
              // "https://imgs.search.brave.com/HcutBLo4585GhWEZDWK4knPXxGJT9qL2KmgJd8engT0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTg1/MjkwMTg4L3Bob3Rv/L3BsYW50aW5nLXRy/ZWUuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPXNHTVBFMmdO/LUxLTFVENl9JMnNY/aUhocHhZUFM5V1M4/SlBrektJM3NOUjQ9",
              'assets/images/plant_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 80,
                  height: 40,
                  child: Text(
                    'Peperomia Houseplantjjasa jka jkjvasjjkfaklkjafljljfajlaf;l;koibm,b,jdvjkhjkjlkkjjkhafljklgalj',
                    style: TextStyle(
                      color: Color(0xFF304022),
                      fontSize: 12,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      overflow: TextOverflow.ellipsis
                    ),
                    maxLines: 3,
                  ),
                ),
                const SizedBox(width: 37),
                Container(
                  width: 28,
                  height: 27,
                  margin: const EdgeInsets.only(left: 5),
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Color(0xFFD5EBCB),
                        Color(0xFF9CED6B),
                        Color(0xFF579133)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 17,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _treestypes() {
    return Container(
      width: 350,
      height: 47,
      decoration: ShapeDecoration(
        color: Color(0xFFE5FFD5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(controller.plants.length, (index) {
              return GestureDetector(
                onTap: () {
                  controller.clickPlant();
                },
                child: Container(
                  width: 112,
                  height: 34,
                  decoration: controller.isplantClicked
                      ? ShapeDecoration(
                          color: Color(0xFFF2F6ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 11,
                              offset: Offset(0, 10),
                              spreadRadius: 0,
                            )
                          ],
                        )
                      : const BoxDecoration(),
                  child: Center(
                    child: Text(
                      controller.plants[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF394929),
                        fontSize: 14,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
      // ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (container, index) {
      //     return Visibility(
      //       visible: clicked,
      //       child: Container(
      //         width: 112,
      //         height: 34,
      //         decoration: ShapeDecoration(
      //           color: Color(0xFFF2F6ED),
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(26),
      //           ),
      //           shadows: const [
      //             BoxShadow(
      //               color: Color(0x3F000000),
      //               blurRadius: 11,
      //               offset: Offset(0, 10),
      //               spreadRadius: 0,
      //             )
      //           ],
      //         ),
      //         child: Text(
      //           plants[index],
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //             color: Color(0xFF394929),
      //             fontSize: 14,
      //             fontFamily: 'Lexend',
      //             fontWeight: FontWeight.w500,
      //             height: 0,
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
