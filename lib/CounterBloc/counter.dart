
import 'package:flutter/material.dart';
import 'package:flutter00/CounterBloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class CounterWidget extends StatelessWidget {
   CounterWidget({super.key});
  String operator = "+";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        builder: (BuildContext context, state) {
          return Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(child: IconButton(
                    onPressed: () {
                      CounterCubit.get(context).onPress("+");
                    }, icon: Icon(Icons.add, size: 40,))),
                Expanded(child: Center(
                    child: Text("${CounterCubit.get(context)
                        .counter}", style: TextStyle(fontSize: 40),))),
                Expanded(child: IconButton(
                  onPressed: () {
                    CounterCubit.get(context).onPress("-");
                  }, icon: Icon(Icons.remove, size: 40,),))
              ],
            ),
          );
        }, listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
