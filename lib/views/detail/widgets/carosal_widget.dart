import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/views/detail/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalWidget extends StatefulWidget {
  const CarousalWidget({super.key});

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  int _currentIndex = 0;
  final _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [1, 2, 3, 4, 5].map((i) {
            return const ImageWidget();
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            height: 300.0,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 5),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: 5,
          effect: const WormEffect(
            dotHeight: 9,
            dotWidth: 9,
            activeDotColor: AppColor.buttonColor,
            dotColor: AppColor.shadowColor,
          ),
        ),
      ],
    );
  }
}
