import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:perfume_app/app/modules/perfume_details/perfume_details_controller.dart';
import 'package:perfume_app/app/modules/perfume_details/widgets/information_widget.dart';
import 'package:perfume_app/app/modules/shared/utils/app_colors.dart';
import 'package:perfume_app/app/modules/shared/utils/app_dimensions.dart';

class PerfumeDetailsPage extends StatefulWidget {
  final String title;
  const PerfumeDetailsPage({Key key, this.title = "PerfumeDetails"})
      : super(key: key);

  @override
  _PerfumeDetailsPageState createState() => _PerfumeDetailsPageState();
}

class _PerfumeDetailsPageState
    extends ModularState<PerfumeDetailsPage, PerfumeDetailsController> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
                top: AppDimensions.medium,
                left: AppDimensions.medium,
                right: AppDimensions.medium),
            decoration: BoxDecoration(
              gradient: AppColors.gradientCustom,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: AppColors.black,
                        size: AppDimensions.iconMeduim,
                      ),
                      onPressed: () {
                        Modular.to.pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        _isFavorited ? Icons.favorite_border : Icons.favorite,
                        color: AppColors.black,
                        size: AppDimensions.iconSmall,
                      ),
                      onPressed: _toggleFavorite,
                    ),
                  ],
                ),
                Image.asset(
                  "images/elixir.png",
                  width: 400,
                  height: 400,
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppDimensions.medium,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DescriptionWidget(),
              ))
        ],
      ),
    );
  }
}
