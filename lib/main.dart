import 'package:flutter/material.dart';
import 'package:shop_app_vip/constants/my_color.dart';
import 'package:shop_app_vip/gen/assets.gen.dart';
import 'package:shop_app_vip/widgets/banner_slider.dart';
import 'package:shop_app_vip/widgets/product_item.dart';

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
      // appBar: AppBar(
      //   backgroundColor: Colors.teal.shade900,
      // ),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics().parent,
          slivers: [
            SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 44, bottom: 10),
                child: Text(
                  'همه دسته بندی ها',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'SB',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 105,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 34),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CategoryHorizontalItemList();
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 10),
                child: Row(
                  children: [
                    Assets.images.iconLeftCategroy.image(),
                    const SizedBox(width: 10),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(fontFamily: 'SB'),
                    ),
                    const Spacer(),
                    const Text(
                      'پر فروش ترین ها',
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: MyColors.greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 34),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const ProductItem();
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 10),
                child: Row(
                  children: [
                    Assets.images.iconLeftCategroy.image(),
                    const SizedBox(width: 10),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(fontFamily: 'SB'),
                    ),
                    const Spacer(),
                    const Text(
                      'پر بازدید ترین ها',
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: MyColors.greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 34),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const ProductItem();
                  },
                ),
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
      margin: const EdgeInsets.all(10),
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
