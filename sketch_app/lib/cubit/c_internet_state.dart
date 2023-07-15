// import 'dart:async';
//
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// enum CinternetState { Initial, Lost, Gained }
//
// class CinternetCubit extends Cubit<CinternetState> {
//   Connectivity _connectivity = Connectivity();
//   StreamSubscription? connectivitySubscription;
//
//   CinternetCubit() : super(CinternetState.Initial) {
//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen((result) {
//       if (result == ConnectivityResult.mobile ||
//           result == ConnectivityResult.wifi) {
//         emit(CinternetState.Gained);
//       } else {
//         emit(CinternetState.Lost);
//       }
//     });
//   }
//
//   @override
//   Future<void> close() {
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
