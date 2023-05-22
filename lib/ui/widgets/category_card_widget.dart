import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ostad_flutter_batch_two/ui/screens/product_list_screen.dart';
import '../utils/app_colors.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  final String name, imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const ProductListScreen());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  imageUrl,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                  letterSpacing: 0.6,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
