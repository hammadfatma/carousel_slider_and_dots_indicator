import 'package:carousel_slider_and_dots_indicator/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider with Dots Indicator'),
      ),
      body: CarouselWithDots(
        items: [
          Image.network('https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg'),
          Image.network('https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg'),
          Image.network('https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg'),
        ],
      ),
    );
  }
}
