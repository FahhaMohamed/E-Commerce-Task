import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:e_commerce_task/core/contants/global.dart';
import 'package:e_commerce_task/views/detail/widgets/image_widget.dart';
import 'package:e_commerce_task/views/detail/widgets/carousal_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalWidget extends StatefulWidget {
  final List images;
  const CarousalWidget({super.key, required this.images});

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  int _currentIndex = 0;
  final _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    double w = getScreenWidth(context);
    return Column(
      children: [
        CarouselSlider(
          items: widget.images.map((image) {
            return CachedNetworkImage(
              width: w * .6,
              imageUrl: image,
              placeholder: (context, url) => carousalShimmer(context),
              errorWidget: (context, url, error) => const ImageWidget(),
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            height: 300.0,
            autoPlay: false,
            enlargeCenterPage: true,
            enableInfiniteScroll: widget.images.length == 1 ? false : true,
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
          count: widget.images.length,
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
