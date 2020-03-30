import 'package:flutter/material.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(AppDimensions.medium),
            child: Text(
              "Kayali Elixir 11",
              style: TextStyle(
                color: AppColors.black,
                fontSize: AppDimensions.textLargest,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
            child: Text(
              "Huba Beauty",
              style: TextStyle(
                color: AppColors.grayLight,
                fontSize: AppDimensions.textMedium,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.medium),
                child: Text(
                  "£210.00",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: AppDimensions.textMedium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimensions.medium),
                child: Column(
                  children: <Widget>[
                    Text(
                      "48 reviews",
                      style: TextStyle(
                        color: AppColors.grayLight,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: AppDimensions.iconSmall,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: AppDimensions.iconSmall,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: AppDimensions.iconSmall,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: AppDimensions.iconSmall,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          size: AppDimensions.iconSmall,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                print("add to cart");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: AppColors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Add to cart",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: AppDimensions.textMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: AppDimensions.medium,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: AppColors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
