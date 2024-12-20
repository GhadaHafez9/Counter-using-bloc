import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testingapp/core/components/resource/service_locator.dart';
import 'package:testingapp/feature/counter/Presentation/controllers/counter_bloc.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  // int counter = 0;
  //
  // void _increaseCounter() {
  //   setState(() {
  //     counter++;
  //   });
  // }
  //
  // void _decreaseCounter() {
  //   setState(() {
  //     counter--;
  //   });
  // }
  //
  // void _resetCounter() {
  //   setState(() {
  //     counter = 0;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CounterBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Counter: ${state.counterVal}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(CounterIncrement());
                        },
                        child: Text('+', style: TextStyle(fontSize: 20)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(CounterDecrement());
                        },
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(CounterReset());
                        },
                        child: Text('Reset'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
