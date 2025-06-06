import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_bike/core/utlis/app_colors.dart';

class CustomTitleCartWidget extends StatelessWidget {
  final String title;
  final String price;
  final TextStyle? priceStyle;
  const CustomTitleCartWidget({
    super.key,
    this.priceStyle,
    this.title = '',
    this.price = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            price,
            style:
                priceStyle ??
                TextStyle(
                  color: AppColors.white.withValues(alpha: .6),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
