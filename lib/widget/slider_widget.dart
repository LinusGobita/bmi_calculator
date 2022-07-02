import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final Function(int) onChange;
  final String title;
  final int initValue;
  final double min;
  final double max;
  final String unit;

  const SliderWidget(
      {Key? key,
        required this.onChange,
        required this.title,
        required this.initValue,
        required this.min,
        required this.max,
        required this.unit})
      : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  late int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 12,
          shape: const RoundedRectangleBorder(),
          child: Column(
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _counter.toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.unit,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
              Slider(
                max: widget.max,
                min: widget.min,
                value: _counter.toDouble(),
                thumbColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _counter = value.toInt();
                  });
                  widget.onChange(_counter);
                },
              )
            ],
          )),
    );
  }
}