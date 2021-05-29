import 'package:bloc_test_app/bloc/tap_counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

dynamic count = 0;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(color: Colors.amber),
              child: BlocBuilder<TapCountBloc,dynamic>(builder: (_, count) {
                return TextButton(
                  child: Text("Tap here"),
                  onPressed: () {
                    count++;
                    if (count == 1) {
                      context.read<TapCountBloc>().add(TapCounterEvent.first_page);
                    }
                    else if(count == 2){
                      context.read<TapCountBloc>().add(TapCounterEvent.second_page);
                    }
                    else{
                      context.read<TapCountBloc>().add(TapCounterEvent.third_page);
                    }
                  },
                );
              })),
        ));
  }
}
