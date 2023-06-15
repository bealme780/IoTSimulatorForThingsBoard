import 'package:flutter/material.dart';
import 'package:iot_sensor_simulator/widgets/dts_change.dart';
import 'package:iot_sensor_simulator/widgets/temp_access_token_change1.dart';
import 'package:iot_sensor_simulator/widgets/temp_access_token_change2.dart';
import 'detection_access_token_change1.dart';
import 'detection_access_token_change2.dart';

class Settings extends StatelessWidget {
  final Function changeTempSensorAccessToken1;
  final Function changeTempSensorAccessToken2;
  final Function changeDetectionSensorAccessToken1;
  final Function changeDetectionSensorAccessToken2;
  final Function changeDTS;
  final String tempSensorAccessToken1;
  final String tempSensorAccessToken2;
  final String detectionSensorAccessToken1;
  final String detectionSensorAccessToken2;
  final int dts;

  Settings(
    this.changeTempSensorAccessToken1,
    this.changeTempSensorAccessToken2,
    this.changeDetectionSensorAccessToken1,
    this.changeDetectionSensorAccessToken2,
    this.changeDTS,
    this.tempSensorAccessToken1,
    this.tempSensorAccessToken2,
    this.detectionSensorAccessToken1,
    this.detectionSensorAccessToken2,
    this.dts,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TempAccessTokenChange1(
                  changeTempSensorAccessToken1, tempSensorAccessToken1),
              TempAccessTokenChange2(
                  changeTempSensorAccessToken2, tempSensorAccessToken2),
              DetectionAccessTokenChange1(
                  changeDetectionSensorAccessToken1, detectionSensorAccessToken1),
              DetectionAccessTokenChange2(
                  changeDetectionSensorAccessToken2, detectionSensorAccessToken2),
              DtsChange(changeDTS, dts),
            ],
          ),
        ),
      ),
    );
  }
}
