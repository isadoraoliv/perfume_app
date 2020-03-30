import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/home/widgets/category_type_widget.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.containerMedium,
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 9,
            padding: const EdgeInsets.all(AppDimensions.small),
            decoration: BoxDecoration(
              gradient: AppColors.gradientCustom,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.tune,
              color: AppColors.white,
              size: AppDimensions.iconSmall,
            ),
          ),
          SizedBox(
            width: AppDimensions.small,
          ),
          CategoryTypeWidget(typeCategory: "FLORAL"),
          SizedBox(
            width: AppDimensions.small,
          ),
          CategoryTypeWidget(typeCategory: "WARM & SPICY"),
        ],
      ),
    );
  }
}
