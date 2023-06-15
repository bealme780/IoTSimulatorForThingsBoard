import 'package:flutter/material.dart';

class DetectionAccessTokenChange1 extends StatefulWidget {
  final Function changeDetectionSensorAccessToken;
  final String detectionSensorAccessToken;

  DetectionAccessTokenChange1(
      this.changeDetectionSensorAccessToken, this.detectionSensorAccessToken);

  @override
  State<DetectionAccessTokenChange1> createState() =>
      _DetectionAccessTokenChangeState();
}

class _DetectionAccessTokenChangeState
    extends State<DetectionAccessTokenChange1> {
  final _ATController = TextEditingController();

  @override
  void initState() {
    _ATController.text = widget.detectionSensorAccessToken.toString();
    super.initState();
  }

  void _change() {
    if (_ATController.text.isEmpty) {
      return;
    }
    widget.changeDetectionSensorAccessToken(_ATController.text.toString());
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Detection 1 Sensor Access Token',
          ),
          controller: _ATController,
          onSubmitted: (_) => _change(),
        ),
        ElevatedButton(
          child: Text('Change Access Token'),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color?>(
                  Theme.of(context).textTheme.button?.color),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor)),
          onPressed: _change,
        ),
      ],
    );
  }
}
