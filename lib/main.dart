import 'package:flutter/material.dart';
import 'package:shop_app_vip/constants/my_color.dart';
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
      body: Column(
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
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CategoryHorizontalItemList();
              },
            ),
          ),
        ],
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
