import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:perfume_app/app/modules/home/widgets/best_deals_widget.dart';
import 'package:perfume_app/app/modules/home/widgets/category_widget.dart';
import 'package:perfume_app/app/modules/home/widgets/perfume_options_widgets.dart';
import 'package:perfume_app/app/modules/home/widgets/perfume_widget.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(
            Icons.short_text,
            color: AppColors.black,
            size: AppDimensions.iconMeduim,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: AppColors.black,
              size: AppDimensions.iconSmall,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(AppDimensions.medium),
                child: Text(
                  "Perfume",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: AppDimensions.textLargest,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: AppDimensions.small,
              ),
              CategoryWidget(),
              SizedBox(
                height: AppDimensions.largest,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: AppDimensions.medium,
                  ),
                  PerfumeOptionsWidget(),
                  SizedBox(
                    width: AppDimensions.medium,
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PerfumeWidget(
                            name: "Channel Coco Noir",
                            value: "£89.00",
                            image: "images/chanel_coco_noir.png",
                            onTap: null,
                          ),
                          PerfumeWidget(
                            name: "Orange Sanguine",
                            value: "£121.00",
                            image: "images/orange.png",
                            onTap: null,
                          ),
                          PerfumeWidget(
                            name: "Elixir II",
                            value: "£210.00",
                            image: "images/elixir.png",
                            onTap: "/perfume_details",
                          ),
                        ],
                      ),
                    ),
                  ),
                  // PerfumeList(),
                ],
              ),

              ////
              Padding(
                padding: const EdgeInsets.all(AppDimensions.medium),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Best deals",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: AppDimensions.textLarge,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "ALL",
                          style: TextStyle(
                            color: AppColors.grayLight,
                            fontSize: AppDimensions.textSmall,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.grayLight,
                            size: AppDimensions.iconSmallest,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: AppDimensions.large,
                  right: AppDimensions.large,
                ),
                child: BestDealsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
