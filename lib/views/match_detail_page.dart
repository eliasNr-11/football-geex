import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_geex/views/home_screen.dart';
import 'package:go_router/go_router.dart';

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
                flex: 5,
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
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.all(8.r),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.1),
                              ),
                              child: Icon(
                                Icons.sports_soccer,
                                size: 28.sp,
                              ),
                            ),
                          ),
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
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                context.pop();
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 34.sp,
                              ),
                            ),
                          ),
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
                              color: Colors.grey[600],
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
                              height: 42.h,
                              width: 1.w,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: ClipPath(
                            clipper: CustomPentagonCard(
                              cornerRadius: 14.r,
                              distanceToXAxis: 14.w,
                              distanceToYAxis: 10.h,
                              isCurved: false,
                              isMatchDetail: false,
                              isProgress: true,
                            ),
                            child: Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width / 2.6,
                              height: 60.h,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: ClipPath(
                            clipper: CustomPentagonCard(
                              cornerRadius: 14.r,
                              distanceToXAxis: 10.w,
                              distanceToYAxis: 8.h,
                              isCurved: false,
                              isMatchDetail: false,
                              isProgress: true,
                            ),
                            child: Container(
                              color: Colors.black26,
                              width: MediaQuery.of(context).size.width / 1.74,
                              height: 50.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '31%',
                            style: TextStyle(
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'MNCH',
                            style: TextStyle(
                                fontSize: 26.sp,
                                // fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                                height: 0.1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '22%',
                            style: TextStyle(
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'DRAW',
                            style: TextStyle(
                                fontSize: 26.sp,
                                // fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                                height: 0.1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '47%',
                            style: TextStyle(
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'CHE',
                            style: TextStyle(
                                fontSize: 26.sp,
                                // fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                                height: 0.1),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: CustomTriangleCard(),
                          child: Container(
                            height: 205.h,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                        Positioned.fill(
                          top: 0,
                          left: 0,
                          child: ClipPath(
                            clipper: CustomPentagonCard(
                              cornerRadius: 20.r,
                              distanceToXAxis: 60.w,
                              distanceToYAxis: 56.h,
                              bezeirYOne: 44.h,
                              bezeirYTwo: 30.h,
                              isCurved: true,
                              isMatchDetail: true,
                              isProgress: false,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.r),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/premier_league.png',
                                          height: 40.h,
                                          width: 30.w,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          '08 SEP',
                                          style: TextStyle(
                                              fontSize: 24.sp,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: -1,
                                              color: Colors.grey[400]),
                                        ),
                                        SizedBox(width: 30.w),
                                      ],
                                    ),
                                    SizedBox(height: 14.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TeamLogoContainer(
                                          pentCard: CustomPentagonCard(
                                            cornerRadius: 10.r,
                                            distanceToXAxis: 18.w,
                                            distanceToYAxis: 16.h,
                                            isCurved: false,
                                            isMatchDetail: false,
                                            isProgress: false,
                                          ),
                                          clr: Colors.white,
                                          logo:
                                              'assets/images/manchester_united.png',
                                          height: 56.h,
                                          width: 56.w,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '09',
                                              style: TextStyle(
                                                  fontSize: 72.sp,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: -1,
                                                  height: 0.1),
                                            ),
                                            Text(
                                              ':30',
                                              style: TextStyle(
                                                fontSize: 72.sp,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: -2,
                                                height: 0.1,
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                          ],
                                        ),
                                        TeamLogoContainer(
                                          pentCard: CustomPentagonCard(
                                            cornerRadius: 10.r,
                                            distanceToXAxis: 18.w,
                                            distanceToYAxis: 16.h,
                                            isCurved: false,
                                            isMatchDetail: false,
                                            isProgress: false,
                                          ),
                                          clr: Colors.white,
                                          logo: 'assets/images/chelsea.png',
                                          height: 56.h,
                                          width: 56.w,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 26.h,
                                      thickness: 0.5.h,
                                    ),
                                    SizedBox(height: 10.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MANCHESTER',
                                                style: TextStyle(
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: -1,
                                                  height: 0.1,
                                                ),
                                              ),
                                              Text(
                                                'UNITED',
                                                style: TextStyle(
                                                    fontSize: 24.sp,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: -1,
                                                    color: Colors.grey[400]),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'PREMIER LEAGUE',
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: -1,
                                              color: Colors.grey[400],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'F.C.',
                                                style: TextStyle(
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: -1,
                                                  height: 0.1,
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                              Text(
                                                'CHELSEA',
                                                style: TextStyle(
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: -1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'CHOOSE THE WINNER',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
