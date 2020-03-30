import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class PerfumeWidget extends StatelessWidget {
  final String name;
  final String value;
  final String image;
  final String onTap;

  const PerfumeWidget({
    Key key,
    @required this.name,
    @required this.value,
    @required this.image,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, onTap);
          },
          child: Container(
            height: MediaQuery.of(context).size.width * 0.83,
            padding: const EdgeInsets.only(
                left: AppDimensions.small, right: AppDimensions.small),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.all(AppDimensions.imageMedium),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: AppColors.gradientCustom,
                      ),
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
