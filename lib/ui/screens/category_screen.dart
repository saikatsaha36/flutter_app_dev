import 'package:flutter/material.dart';
import 'package:ostad_flutter_batch_two/ui/screens/home_screen.dart';
import 'package:ostad_flutter_batch_two/ui/utils/app_colors.dart';
import 'package:ostad_flutter_batch_two/ui/widgets/category_card_widget.dart';
import 'package:get/get.dart';

import '../state_managers/bottom_navigation_bar_controller.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Categories'),
       leading: IconButton(
         onPressed: () {
           Get.find<BottomNavigationBarController>().backToHome();
           // final BottomNavigationBarController navigationBarController =
           // Get.put(BottomNavigationBarController());
           // navigationBarController.backToHome();
         },
         icon: const Icon(
           Icons.arrow_back_outlined,
           color: greyColor,
         ),
       ),
     ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4
            ), itemBuilder: (context, index) {
              return const CategoryCardWidget(name: 'Dummy',);
        }),
      )
    );
  }
}
