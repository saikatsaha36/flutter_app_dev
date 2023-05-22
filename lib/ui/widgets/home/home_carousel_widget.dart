// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../utils/app_colors.dart';
//
// class HomeCarouselWidget extends StatelessWidget {
// final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);
//
// @override
// Widget build(BuildContext context) {
// return Column(
// children: [
// CarouselSlider(
// // carouselController: _carouselController,
// options: CarouselOptions(
// height: 180.0,
// viewportFraction: 1,
// autoPlay: true,
// onPageChanged: (index, _){
// _currentCarouselIndex.value = index;
// },
// autoPlayInterval: const Duration(seconds: 5)),
// items: [1, 2, 3, 4, 5].map((i) {
// return Builder(
// builder: (BuildContext context) {
// return Container(
// width: MediaQuery.of(context).size.width,
// margin: const EdgeInsets.symmetric(horizontal: 5.0),
// decoration: BoxDecoration(
// color: Colors.amber,
// borderRadius: BorderRadius.circular(8)),
// alignment: Alignment.center,
// child: Text(
// 'text $i',
// style: const TextStyle(fontSize: 16.0),
// ));
// },
// );
// }).toList(),
// ),
// const SizedBox(
// height: 6,
// ),
// ValueListenableBuilder(
// valueListenable: _currentCarouselIndex,
// builder: (context, currentValue, _) {
// return Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// for (int i = 0; i < 5; i++)
// Padding(
// padding: const EdgeInsets.all(2.0),
// child: Container(
// height: 10,
// width: 10,
// decoration: BoxDecoration(
// color: currentValue == i ? primaryColor : null,
// border:
// Border.all(color: greyColor.withOpacity(0.5)),
// borderRadius: BorderRadius.circular(10)),
// ),
// )
// ],
// );
// }
// ),
// ],
// );
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_batch_two/data/models/home_slider_model.dart';

import '../../utils/app_colors.dart';

class HomeCarouselWidget extends StatelessWidget {
  final HomeSliderModel homeSliderModel;
  final ValueNotifier<int> _currentCarouselIndex = ValueNotifier(0);

  HomeCarouselWidget({super.key, required this.homeSliderModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              onPageChanged: (index, _) {
                _currentCarouselIndex.value = index;
              }),
          items: homeSliderModel.sliders!.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(
                            slider.image ?? ''
                          ))),
                  alignment: Alignment.center,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 6,
        ),
        ValueListenableBuilder(
          valueListenable: _currentCarouselIndex,
          builder: (context, currentValue, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < (homeSliderModel.sliders?.length ?? 0); i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: currentValue == i ? primaryColor : null,
                          border: Border.all(color: greyColor.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
              ],
            );
          },
        ),
      ],
    );
  }
}
