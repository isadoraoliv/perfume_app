import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class BestDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 8.2,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: AppColors.grayLight,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 10,
              margin: const EdgeInsets.only(
                left: AppDimensions.small,
                top: AppDimensions.small,
                bottom: AppDimensions.small,
              ),
              padding: const EdgeInsets.all(AppDimensions.small),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: AppColors.gradientCustom,
              ),
              child: Image.asset("images/burberry_indigo.png"),
            ),
            SizedBox(
              width: AppDimensions.large,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "My Burberry Black",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: AppDimensions.textSmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: AppDimensions.medium,
                ),
                Text(
                  "£ 89.00",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: AppDimensions.textSmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: AppDimensions.medium,
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: MediaQuery.of(context).size.width / 7,
            height: MediaQuery.of(context).size.height / 18,
            margin: EdgeInsets.only(
              top: 55,
              left: 56,
            ),
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(
                "-20%",
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
