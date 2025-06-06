import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_bike/core/utlis/app_colors.dart';
import 'package:online_bike/core/widget/custom_border_container_widget.dart';
import 'package:online_bike/features/cart/ui/widgets/cart_app_bar_widget.dart';
import 'package:online_bike/features/cart/ui/widgets/cart_item_widget.dart';
import 'package:online_bike/features/cart/ui/widgets/cart_row_title_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cartAppBarWidget(),
      body: ListView(
        children: [
          ...List.generate(3, (index) => const CartItemWidget()),
          SizedBox(height: 24.h),
          Center(
            child: Text(
              'Your cart qualifies for free shipping',
              style: TextStyle(
                color: AppColors.white54,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff212937),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.sp),
                  child: Text(
                    'Bike30',
                    style: TextStyle(
                      color: AppColors.white.withValues(alpha: .6),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                CustomBorderContainer(
                  child: Text(
                    'Apply',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          CustomTitleCartWidget(title: 'Subtotal', price: '\$100.00'),
          CustomTitleCartWidget(title: 'Delivery Fee:', price: '\$100.00'),
          CustomTitleCartWidget(title: 'Discount:', price: '\$100.00'),
          SizedBox(height: 10.h),
          CustomTitleCartWidget(
            title: 'Total',
            price: '\$100.00',

            priceStyle: TextStyle(
              color: AppColors.blueLight,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff212937),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomBorderContainer(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.sp,
                    vertical: 12.sp,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: AppColors.white,
                  ),
                ),

                Spacer(),
                Text(
                  'Checkout',
                  style: TextStyle(
                    color: AppColors.white.withValues(alpha: .6),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
