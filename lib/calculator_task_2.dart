import 'package:flutter/material.dart';

class CalculatorTaskTwo extends StatefulWidget {
  const CalculatorTaskTwo({super.key});

  @override
  State<CalculatorTaskTwo> createState() => _CalculatorTaskTwoState();
}

class _CalculatorTaskTwoState extends State<CalculatorTaskTwo> {
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
                    double value1 = double.tryParse(_valueOneController.text) ?? 0.0;
                    double value2 = double.tryParse(_valueTwoController.text) ?? 0.0;
                    calculateValue(value1,value2);
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

  void calculateValue(double val1,double val2) {

    double sum = (val1 + val2);
    setState(() {
      result = sum.toString();

    });
  }

}
