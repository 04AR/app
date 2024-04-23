import 'package:flutter/material.dart';

class In_Cal extends StatefulWidget {
  const In_Cal({super.key});

  @override
  State<In_Cal> createState() => _In_CalState();
}

class _In_CalState extends State<In_Cal> {
  @override
  Widget build(BuildContext context) {
    double val = 1000;
    double time = 1;
    int age = 22;

    double rate = 0.2;
    double ret = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("I N S U R A N C E"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "D O B: ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 10),
                ),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8.0)),
                  onPressed: () async {
                    final DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1960),
                        lastDate: DateTime(2024));
                  },
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: Container()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "₹$val ",
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
                value: val,
                min: 100,
                max: 50000,
                divisions: 499,
                label: val.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    val = value;
                    ret = (val * time * rate) / (age - 19);
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$time yr ",
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
                value: time,
                min: 1,
                max: 50,
                divisions: 50,
                label: time.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    time = value;
                    ret = (val * time * rate) / (age - 19);
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Total investment will be : ₹$val \n Returns will be ₹$ret"),
          ),
        ],
      ),
    );
  }
}
