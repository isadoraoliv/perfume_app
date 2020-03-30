import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class PerfumeOptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RotatedBox(
          quarterTurns: 15,
          child: Column(
            children: <Widget>[
              Text(
                "SUGGESTED",
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: AppDimensions.textSmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: AppDimensions.smallest,
              ),
              CircleAvatar(
                backgroundColor: AppColors.green,
                radius: 4,
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppDimensions.medium,
        ),
        RotatedBox(
          quarterTurns: 15,
          child: Column(
            children: <Widget>[
              Text(
                "POPULAR",
                style: TextStyle(
                  fontSize: AppDimensions.textSmall,
                  color: AppColors.grayLight,
                ),
              ),
              SizedBox(
                height: AppDimensions.smallest,
              ),
              CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
