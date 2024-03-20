import 'package:fitess_style_132/workouts_pages/eco_content.dart';
import 'package:fitess_style_132/workouts_pages/eco_detaile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcoWidget extends StatelessWidget {
  const EcoWidget({
    super.key,
    required this.model,
    this.color,
  });
  final EcoCont model;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EcoDetaile(
              model: model,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? const Color(0xff202020),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                model.title,
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.w600,
                  color: color ?? const Color(0xffE80000),
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: color ?? const Color(0xffE80000),
            )
          ],
        ),
      ),
    );
  }
}
