import 'package:flutter/material.dart';

class CalculatorTaskOne extends StatefulWidget {
  const CalculatorTaskOne({super.key});

  @override
  State<CalculatorTaskOne> createState() => _CalculatorTaskOneState();
}

class _CalculatorTaskOneState extends State<CalculatorTaskOne> {
  var _valueOneController = TextEditingController();
  var _valueTwoController = TextEditingController();

  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(55.0),
          child: Column(
            children: [
              TextFormField(
                controller: _valueOneController,
                decoration: InputDecoration(
                    hintText: 'Enter Value One',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    )),
              ),
              SizedBox(
                height: 55,
              ),
              TextFormField(
                controller: _valueTwoController,
                decoration: InputDecoration(
                    hintText: 'Enter Value Two',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    )),
              ),
              SizedBox(
                height: 55,
              ),
              ElevatedButton(
                  onPressed: () {
                    calculateValue();
                    print('clicked');
                    print(result);
                  },
                  child: Text('Calculate')),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 100,
                  child: Text(
                    'Result: $result',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateValue() {
    double value1 = double.tryParse(_valueOneController.text) ?? 0.0;
    double value2 = double.tryParse(_valueTwoController.text) ?? 0.0;
    double sum = value1 + value2;
    setState(() {
      result = sum.toString();

    });
  }
}
