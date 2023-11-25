import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselWithDots extends StatefulWidget {
  final List<Widget> items;
  const CarouselWithDots({super.key, required this.items});

  @override
  State<CarouselWithDots> createState() => _CarouselWithDotsState();
}

class _CarouselWithDotsState extends State<CarouselWithDots> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CarouselSlider(
            items: widget.items.map((item) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: item,
              );
            }).toList(),
            options: CarouselOptions(
                height: 400,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                })),
        DotsIndicator(
          dotsCount: widget.items.length,
          position: currentIndex,
          decorator: DotsDecorator(
            color: Colors.black,
            activeColor: Colors.amber,
            size: const Size.square(12),
            activeSize: const Size(24, 12),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
