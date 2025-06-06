import 'package:bordered/bordered.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBorderContainer extends StatelessWidget {
  final Gradient borderGradient;
  final Gradient containerGradient;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const CustomBorderContainer({
    super.key,
    this.padding,
    this.child = const SizedBox.shrink(),
    this.borderGradient = const LinearGradient(
      begin: AlignmentDirectional.topStart,
      end: AlignmentDirectional.bottomEnd,
      colors: [Colors.white24, Colors.black26],
    ),
    this.containerGradient = const LinearGradient(
      begin: AlignmentDirectional.topStart,
      end: AlignmentDirectional.bottomEnd,
      colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Bordered(
      border: UiBorder.all(gradient: borderGradient),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 38.sp, vertical: 12.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: containerGradient,
        ),
        child: child,
      ),
    );
  }
}
