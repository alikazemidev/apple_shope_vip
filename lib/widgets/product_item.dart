import 'package:flutter/material.dart';

import '../constants/my_color.dart';
import '../gen/assets.gen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
                padding:  EdgeInsets.only(right: 10,bottom: 10),
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
    );
  }
}