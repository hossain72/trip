import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderImage extends StatefulWidget {
  final List imageList;

  const CarouselSliderImage({required this.imageList});

  @override
  _CarouselSliderImageState createState() => _CarouselSliderImageState();
}

class _CarouselSliderImageState extends State<CarouselSliderImage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  var imgList = [
    'assets/images/png/placeholder_img.png',
  ];

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;

    final List<Widget> imageSliders = widget.imageList.isEmpty
        ? imgList
            .map((item) => Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                        height: height < 600 ? height / 3 : height / 3.4,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: AssetImage(item.toString()),
                                fit: BoxFit.cover))),
                  ],
                ))
            .toList()
        : widget.imageList
            .map((item) => Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      height: height < 600 ? height / 3 : height / 3.4,
                      width: width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.asset(item, fit: BoxFit.fill,),
                      ),
                    ),
                  ],
                ))
            .toList();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              height: height < 600 ? height / 3 : height / 3.4,
              autoPlay: true,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        widget.imageList.isEmpty
            ? Positioned(
                bottom: height / 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry.key
                                ? Colors.white
                                : Colors.grey),
                      ),
                    );
                  }).toList(),
                ))
            : Positioned(
                bottom: height / 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry.key
                                ? Colors.white
                                : Colors.grey.withOpacity(
                                    _current == entry.key ? 1 : 0.4)),
                      ),
                    );
                  }).toList(),
                ))
      ],
    );
  }
}
