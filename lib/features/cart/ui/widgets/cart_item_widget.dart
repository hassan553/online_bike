import 'package:bordered/bordered.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_bike/core/utlis/app_colors.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        SizedBox(
          height: 90.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Bordered(
                  border: UiBorder.all(
                    width: 2.sp,
                    gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                      colors: [Colors.white24, Colors.black26],
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 98.w,
                    height: 88.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [Color(0xff4C5770), Color(0xff363E51)],
                      ),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 50.sp,
                      color: AppColors.white,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PEUGEOT- LR01',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$ 1,999.99',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3C9EEA),
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                      colors: [Color(0xff212937), Color(0xff353F54)],
                    ),
                  ),
                  child: Row(
                    children: [
                      Bordered(
                        border: UiBorder.all(
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                            colors: [Colors.white24, Colors.black26],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: AlignmentDirectional.topStart,
                              end: AlignmentDirectional.bottomEnd,
                              colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 30.sp,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '1',
                        style: TextStyle(
                          color: AppColors.white54,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Bordered(
                        border: UiBorder.all(
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                            colors: [Colors.white24, Colors.black26],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: AlignmentDirectional.topStart,
                              end: AlignmentDirectional.bottomEnd,
                              colors: [Color(0xff242C3B), Color(0xff353F54)],
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 30.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 14.h),
        Divider(height: 2, thickness: .5, color: Colors.grey.shade700),
      ],
    );
  }
}
