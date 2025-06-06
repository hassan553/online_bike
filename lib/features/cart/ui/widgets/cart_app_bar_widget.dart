import 'package:bordered/bordered.dart';
import 'package:flutter/material.dart';
import 'package:online_bike/core/utlis/app_colors.dart';

  PreferredSize cartAppBarWidget() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
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
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                      colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              Text(
                'My Shopping Cart',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

