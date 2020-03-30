import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class CategoryTypeWidget extends StatelessWidget {
  final String typeCategory;

  const CategoryTypeWidget({
    Key key,
    @required this.typeCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(AppDimensions.smallest),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: AppColors.grayLight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppDimensions.small,
            bottom: AppDimensions.small,
            left: AppDimensions.largest,
            right: AppDimensions.largest,
          ),
          child: Text(
            typeCategory,
            style: TextStyle(
              color: AppColors.green,
              fontWeight: FontWeight.bold,
              fontSize: AppDimensions.textSmall,
            ),
          ),
        ),
      ),
    );
  }
}
