import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/my_color.dart';

class BannerSlider extends StatelessWidget {
  BannerSlider({super.key});
  final PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: .8,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                height: 200,
              );
            },
          ),
        ),
        Positioned(
          bottom: 15,
          child: SmoothPageIndicator(
            effect: const ExpandingDotsEffect(
              dotColor: Colors.white,
              dotHeight: 10,
              dotWidth: 10,
              expansionFactor: 5,
              activeDotColor: MyColors.blueIndictor,
            ),
            controller: _controller,
            count: 3,
          ),
        ),
      ],
    );
  }
}
