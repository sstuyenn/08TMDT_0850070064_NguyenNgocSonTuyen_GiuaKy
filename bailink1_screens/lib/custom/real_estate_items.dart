// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bailink1_screens/custom/border_box.dart';
import 'package:bailink1_screens/routes/app_routes.dart';
import 'package:bailink1_screens/utils/constants.dart';
import 'package:bailink1_screens/utils/custom_functions.dart';
import 'package:bailink1_screens/utils/widget_function.dart';

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({super.key, required this.itemData});

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: GestureDetector(
                  onTap: () => context.pushNamed(AppRoutes.details.name,
                      extra: itemData),
                  child: Image.asset(itemData['image']),
                ),
              ),
              const Positioned(
                top: 15.0,
                right: 15.0,
                child: BorderBox(
                  width: 50.0,
                  height: 50.0,
                  child: Icon(
                    Icons.favorite_border,
                    color: kColorBlack,
                  ),
                ),
              ),
            ],
          ),
          addVerticalSpace(15.0),
          Row(
            children: <Widget>[
              Text(
                formatCurrency(itemData["amount"]),
                style: themeData.textTheme.displayLarge,
              ),
              addHorizontalSpace(10.0),
              Text(
                '${itemData["address"]}',
                style: themeData.textTheme.bodyMedium,
              ),
            ],
          ),
          addVerticalSpace(10.0),
          Text(
            '${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft',
            style: themeData.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
