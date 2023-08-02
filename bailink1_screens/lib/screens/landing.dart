// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:bailink1_screens/custom/border_box.dart';
import 'package:bailink1_screens/custom/choices.dart';
import 'package:bailink1_screens/custom/option_button.dart';
import 'package:bailink1_screens/custom/real_estate_items.dart';
import 'package:bailink1_screens/utils/constants.dart';
import 'package:bailink1_screens/utils/sample_data.dart';
import 'package:bailink1_screens/utils/widget_function.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double padding = 25.0;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: padding),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  addVerticalSpace(padding),
                  const Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        BorderBox(
                          width: 50.0,
                          height: 50.0,
                          child: Icon(
                            Icons.menu,
                            color: kColorBlack,
                          ),
                        ),
                        BorderBox(
                          width: 50.0,
                          height: 50.0,
                          child: Icon(
                            Icons.settings,
                            color: kColorBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'City',
                      style: themeData.textTheme.bodyMedium,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'San Francisco',
                      style: themeData.textTheme.displayLarge,
                    ),
                  ),
                  const Padding(
                    padding: sidePadding,
                    child: Divider(
                      color: kColorGrey,
                      height: padding,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        '<\$220,000',
                        'For Sale',
                        '3-4 Beds',
                        '>1000 sqft'
                      ].map((option) => ChoiceOption(text: option)).toList(),
                    ),
                  ),
                  addVerticalSpace(5.0),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: reData.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(itemData: reData[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 40.0,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_outlined,
                    text: 'Map View',
                    width: size.width * 0.40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
