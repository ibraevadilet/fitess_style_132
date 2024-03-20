import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/workouts_pages/eco_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcoDetaile extends StatelessWidget {
  const EcoDetaile({super.key, required this.model});
  final EcoCont model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xff555555),
        ),
        backgroundColor: Colors.grey.shade400.withOpacity(0.1),
        centerTitle: false,
        title: const FittedBox(child: Text('Eco-friendly Fitness Challenges')),
        titleTextStyle: TextStyle(
          fontSize: 20.h,
          fontWeight: FontWeight.w500,
          fontFamily: family,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 30.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 32.h,
                color: const Color(0xff202020),
              ),
              Text(
                'Description:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                model.description,
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Time:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                '${model.time} minutes',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Calories:',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff555555),
                ),
              ),
              Text(
                '${model.calories}',
                style: TextStyle(
                  fontSize: 18.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.r),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff202020),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Color(0xffE80000),
                            ),
                            Text(
                              'Change Task',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffE80000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.r),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff202020),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle_outline,
                              color: Color(0xffE80000),
                            ),
                            Text(
                              'Mark as Done',
                              style: TextStyle(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffE80000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
