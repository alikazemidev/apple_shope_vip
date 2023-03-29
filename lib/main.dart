import 'package:flutter/material.dart';
import 'package:shop_app_vip/constants/my_color.dart';
import 'package:shop_app_vip/gen/assets.gen.dart';
import 'package:shop_app_vip/widgets/banner_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundScreenColor,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BannerSlider(),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'همه دسته بندی ها',
                style: TextStyle(
                  fontFamily: 'SB',
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CategoryHorizontalItemList();
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 216,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Expanded(child: Container()),
                      Assets.images.iphone.image(),
                      Positioned(
                        right: 10,
                        top: 0,
                        child: Assets.images.activeFavProduct.image(),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 0,
                        child: Container(
                          width: 35,
                          height: 18,
                          decoration: BoxDecoration(
                            color: MyColors.redColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              '٪۳',
                              style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.only(right: 5,bottom: 10),
                        child:  Text(
                          'آیفون ۱۳ پرو مکس',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 14,
                          ),
                        ),
                      ),

                      Container(
                        height: 53,
                        decoration: const BoxDecoration(
                          color: MyColors.blueColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blueColor,
                              blurRadius: 25,
                              offset: Offset(0, 15),
                              spreadRadius: -12,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'تومان',
                              style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '۱۱,۴۸۰,۰۰۰',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'SM',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '۱۱,۱۲۰,۰۰۰',
                                  style: TextStyle(
                                    fontFamily: 'SM',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Assets.images.iconRightArrowCricle
                                .image(width: 25, height: 25),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: ShapeDecoration(
              color: Colors.red,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              shadows: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 25,
                  offset: Offset(0, 15),
                  spreadRadius: -12,
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.mouse,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'همه',
            style: TextStyle(
              fontFamily: 'SB',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
