import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchDetailPage extends StatelessWidget {
  const MatchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: const Color(0xFFFFC7E9),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xFFFF4F31),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/premier_league.png',
                          height: 50.h,
                          width: 40.w,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8.sp,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5.w),
                              Icon(
                                Icons.circle,
                                size: 10.sp,
                              ),
                              SizedBox(width: 5.w),
                              Icon(
                                Icons.circle,
                                size: 8.sp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 32.sp,
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 260.h,
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Text(
                              'THE BEST',
                              style: TextStyle(
                                  fontSize: 100.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -2),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Text(
                              'FOOTBALL',
                              style: TextStyle(
                                fontSize: 100.sp,
                                fontWeight: FontWeight.w600,
                                height: 0.1,
                                letterSpacing: -2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Text(
                              'MATCH',
                              style: TextStyle(
                                fontSize: 100.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: -2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'PAST GAMES',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 6.w),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 18.sp,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MNCH',
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Container(
                                        margin: EdgeInsets.only(right: 5.w),
                                        height: 14.r,
                                        width: 14.r,
                                        decoration: BoxDecoration(
                                            color: index % 2 == 0
                                                ? Colors.black
                                                : Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(2.5.w)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.w),
                                  Text(
                                    'CHE',
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Container(
                                        margin: EdgeInsets.only(right: 5.w),
                                        height: 14.r,
                                        width: 14.r,
                                        decoration: BoxDecoration(
                                            color: index % 2 != 0
                                                ? Colors.black
                                                : Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(2.5.w)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            40,
                            (index) => Container(
                              margin: EdgeInsets.only(top: 20.h),
                              height: 32.h,
                              width: 1.w,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            color: Colors.black,
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: 60.h,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            color: Colors.black26,
                            width: MediaQuery.of(context).size.width / 1.74,
                            height: 40.h,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
