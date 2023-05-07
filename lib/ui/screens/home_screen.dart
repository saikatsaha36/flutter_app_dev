import 'package:flutter/material.dart';
import 'package:ostad_flutter_batch_two/ui/utils/app_colors.dart';

import '../widgets/app_bar_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Image.asset('assets/images/logo_nav.png'),
              const Spacer(),
              AppBarIconButton(
                iconData: Icons.person,
                onTap: () {},
              ),
              AppBarIconButton(
                iconData: Icons.call,
                onTap: () {},
              ),
              AppBarIconButton(
                iconData: Icons.notifications_none,
                onTap: () {},
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {},
                decoration: InputDecoration(
                  fillColor: softGreyColor.withOpacity(0.1),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  filled: true,
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: softGreyColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
        ));
  }
}
