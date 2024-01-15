import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(52.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                            size: 10.sp,
                          ),
                          SizedBox(width: 5.w),
                          Icon(
                            Icons.circle,
                            size: 8.sp,
                            color: Colors.grey,
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'PREMIER',
                style: TextStyle(
                    fontSize: 100.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'LEAGUE',
                style: TextStyle(
                    fontSize: 100.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                    height: 0.1,
                    letterSpacing: -2),
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Stack(
                    children: [
                      const Positioned(
                        child: MatchesCard(
                          top: 0,
                          clr: Color(0xFFFFC7E9),
                          firstTeam: {
                            'logo': 'assets/images/manchester_united.png',
                            'nameFirst': 'MANCHESTER',
                            'nameLast': 'UNITED'
                          },
                          secondTeam: {
                            'logo': 'assets/images/chelsea.png',
                            'nameFirst': 'F.C.',
                            'nameLast': 'CHELSEA'
                          },
                          dayDate: '08',
                          dayMonth: 'SEPTEMBER',
                          dayHour: '09',
                          daySecond: '30',
                          isEven: true,
                        ),
                      ),
                      Positioned(
                        child: MatchesCard(
                          top: 152.h,
                          clr: const Color(0xFF489CFF),
                          firstTeam: const {
                            'logo': 'assets/images/crystal_palace.png',
                            'nameFirst': 'CRYSTAL',
                            'nameLast': 'PALACE'
                          },
                          secondTeam: const {
                            'logo': 'assets/images/manchester_city.png',
                            'nameFirst': 'MANCHESTER',
                            'nameLast': 'CITY'
                          },
                          dayDate: '12',
                          dayMonth: 'SEPTEMBER',
                          dayHour: '12',
                          daySecond: '00',
                          isEven: false,
                        ),
                      ),
                      Positioned(
                        child: MatchesCard(
                          top: 304.h,
                          clr: const Color(0xFFC7FFCA),
                          firstTeam: const {
                            'logo': 'assets/images/arsenal.png',
                            'nameFirst': 'ARSENAL',
                            'nameLast': 'F.C.'
                          },
                          secondTeam: const {
                            'logo': 'assets/images/aston_villa.png',
                            'nameFirst': 'ASTON',
                            'nameLast': 'VILLA'
                          },
                          dayDate: '14',
                          dayMonth: 'SEPTEMBER',
                          dayHour: '13',
                          daySecond: '00',
                          isEven: true,
                        ),
                      ),
                      Positioned(
                        child: MatchesCard(
                          top: 456.h,
                          clr: const Color(0xFFFFC555),
                          firstTeam: const {
                            'logo': 'assets/images/nottingham_forest.png',
                            'nameFirst': 'NOTTINGHAM',
                            'nameLast': 'FOREST'
                          },
                          secondTeam: const {
                            'logo': 'assets/images/west_ham_united.png',
                            'nameFirst': 'WESTHAM',
                            'nameLast': 'UNITED'
                          },
                          dayDate: '15',
                          dayMonth: 'SEPTEMBER',
                          dayHour: '12',
                          daySecond: '30',
                          isEven: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MatchesCard extends StatelessWidget {
  const MatchesCard({
    super.key,
    required this.top,
    required this.clr,
    required this.firstTeam,
    required this.secondTeam,
    required this.dayDate,
    required this.dayMonth,
    required this.dayHour,
    required this.daySecond,
    required this.isEven,
  });

  final double top;
  final Color clr;
  final Map<String, String> firstTeam;
  final Map<String, String> secondTeam;
  final String dayDate;
  final String dayMonth;
  final String dayHour;
  final String daySecond;
  final bool isEven;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomTriangleCard(),
            child: Container(
              height: 210.h,
              color: clr.withOpacity(0.4),
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
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: clr,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.r),
                          child: Row(
                            children: [
                              TeamLogoContainer(
                                pentCard: CustomPentagonCard(
                                  cornerRadius: 10.r,
                                  distanceToXAxis: 18.w,
                                  distanceToYAxis: 16.h,
                                  isCurved: false,
                                ),
                                clr: clr,
                                logo: firstTeam['logo']!,
                                height: 56.h,
                                width: 56.w,
                              ),
                              SizedBox(width: 10.w),
                              TeamLogoContainer(
                                pentCard: CustomPentagonCard(
                                  cornerRadius: 10.r,
                                  distanceToXAxis: 18.w,
                                  distanceToYAxis: 16.h,
                                  isCurved: false,
                                ),
                                clr: clr,
                                logo: secondTeam['logo']!,
                                height: 56.h,
                                width: 56.w,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          height: 60.h,
                          child: Row(
                            children: [
                              Text(
                                dayHour,
                                style: TextStyle(
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                ':$daySecond',
                                style: TextStyle(
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueGrey[600]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  dayDate,
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  dayMonth,
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey[600],
                                      height: 0.4),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 60.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      firstTeam['nameFirst']!,
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600,
                                        color: isEven ? Colors.black : Colors.blueGrey[600],
                                      ),
                                    ),
                                    Text(
                                      firstTeam['nameLast']!,
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600,
                                        color: !isEven ? Colors.black : Colors.blueGrey[600],
                                        height: 0.4,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 30.w),
                              SizedBox(
                                height: 60.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      secondTeam['nameFirst']!,
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600,
                                        color: !isEven
                                            ? Colors.black
                                            : Colors.blueGrey[600],
                                      ),
                                    ),
                                    Text(
                                      secondTeam['nameLast']!,
                                      style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600,
                                          height: 0.4,
                                          color: isEven
                                              ? Colors.black
                                              : Colors.blueGrey[600]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'PREMIER LEAGUE',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TeamLogoContainer extends StatelessWidget {
  const TeamLogoContainer({
    super.key,
    required this.pentCard,
    required this.clr,
    required this.logo,
    required this.height,
    required this.width,
  });

  final CustomPentagonCard pentCard;
  final Color clr;
  final String logo;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: pentCard,
          child: Container(width: width, height: height, color: Colors.black),
        ),
        Positioned(
          top: 0.1,
          bottom: 0.1,
          left: 0.1,
          right: 0.1,
          child: ClipPath(
            clipper: pentCard,
            child: Container(
              padding: EdgeInsets.all(12.r),
              width: width,
              height: height,
              color: clr,
              child: Image.asset(logo, fit: BoxFit.fitHeight,),
            ),
          ),
        )
      ],
    );
  }
}

class CustomPentagonCard extends CustomClipper<Path> {
  final double cornerRadius;
  final double distanceToXAxis;
  final double distanceToYAxis;
  double? bezeirYOne;
  double? bezeirYTwo;
  final bool isCurved;

  CustomPentagonCard({
    super.reclip,
    required this.cornerRadius,
    required this.distanceToXAxis,
    required this.distanceToYAxis,
    this.bezeirYOne,
    this.bezeirYTwo,
    required this.isCurved,
  });
  @override
  getClip(Size size) {
    var path = Path();

    path.moveTo(0, cornerRadius);

    path.lineTo(0, size.height - cornerRadius);

    //BottomLeft
    path.quadraticBezierTo(0, size.height, cornerRadius, size.height);

    path.lineTo(size.width - cornerRadius, size.height);

    //BottomRight
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerRadius);

    path.lineTo(size.width, cornerRadius);

    path.lineTo(size.width, distanceToYAxis);
    if (isCurved) {
      path.quadraticBezierTo(
          size.width, bezeirYOne!, size.width - cornerRadius, bezeirYTwo!);
    }
    path.lineTo(size.width - distanceToXAxis, 0);
    path.lineTo(cornerRadius, 0);

    //TopLeft
    path.quadraticBezierTo(0, 0, 0, cornerRadius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class CustomTriangleCard extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    double cornerRadius = 20.0;

    path.moveTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path.lineTo(size.width, 40);
    path.lineTo(size.width - 54, 0);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
