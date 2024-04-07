import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CouponReward extends StatefulWidget {
  const CouponReward({super.key});

  @override
  State<CouponReward> createState() => _CouponReward();
}

class _CouponReward extends State<CouponReward> {
  double progressValue = 0.6; // 프로그래스바의 현재값
  double maxValue = 1.0; // 프로그래스바의 최대값

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${(progressValue * 10.0).toInt()}★ until Gold Level',
            style: TextStyle(color: Colors.green, fontSize: 12),
          ),
          SizedBox(height: 8.0,),
          Row(
            children: [
              ProgressBar(
                progressValue: progressValue,
                maxValue: maxValue,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  '${(progressValue*10).toInt()} / ${(maxValue*10).toInt()}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Icon(Icons.mail_outline),
              Text(''' What's New''',
                style: TextStyle(color: Colors.black),
              ),
              Padding(padding: EdgeInsets.only(left: 4),
              child: Icon(Icons.confirmation_number_outlined),
              ),
              Text(' Coupon'),
              Padding(padding: EdgeInsets.only(left: 170), child: Icon(Icons.notifications_none),),
            ],
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double progressValue;
  final double maxValue;

  const ProgressBar(
      {super.key, required this.progressValue, required this.maxValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 15,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Container(
            width: 300.0 *(progressValue * maxValue) ,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
            ),
          ),

        ],
      ),
    );
  }
}
