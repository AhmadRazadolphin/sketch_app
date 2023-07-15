import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_app/cubit/c_internet_cubit.dart';

class CubitDemo extends StatelessWidget {
  const CubitDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: BlocConsumer<CinternetCubit, CinternetState>(
          listener: (context, state) {
            if (state == CinternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Internet Connected"),
                backgroundColor: Colors.green,
              ));
            } else if (state == CinternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Internet not connected"),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state == CinternetState.Gained) {
              return const Text("Connected");
            } else if (state == CinternetState.Lost) {
              return const Text("Not Connected");
            } else {
              return const Text("Loading......");
            }
          },
        )),

        // child: BlocBuilder<InternetBloc, InternetState>(
        //   builder: (BuildContext context, state) {
        //     if (state is InternetGainedState) {
        //       return const Text("Connected");
        //     } else if (state is InternetLostState) {
        //       return const Text("Not Connected");
        //     } else {
        //       return const Text("Loading......");
        //     }
        //   },
        //   // builder: Text("Loading......")
        // ),
      ),
    );
  }
}
