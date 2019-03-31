import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
      List<Step> _steps = [
          Step(
              title: Text('Paso 1'),
              content: Text('Aprender Dart'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
              title: Text('Paso 2'),
              content: Text('Desarrollar la aplicación'),
              isActive: _currentStep >= 1,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
              title: Text('Paso 3'),
              content: Text('Publicar la aplicación'),
              isActive: _currentStep >= 2,
              state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
      ];
      
    return Scaffold(
        appBar: AppBar(
            title: Text('Demo Stepper'),
        ),
        body: Container(
            child: Stepper(
                currentStep: _currentStep,
                steps: _steps,
                onStepTapped: (int step) {
                    setState(() {
                      _currentStep = step;
                    });
                },
                onStepContinue: () {
                    setState(() {
                        _currentStep = _currentStep == _steps.length - 1 ? 0 : _currentStep + 1;
                    });
                },
                onStepCancel: () {
                    setState(() {
                        _currentStep = _currentStep == _steps.length - 1 ? _currentStep - 1 : 0;
                    });
                },
            ),
        ),
    );
  }
}
