import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ir/Args/cubit/cubit/resultsofsearchingargscubit_cubit.dart';
import 'package:ir/Clinical%20Trials/cubit/cubit/resultsofsearchingclinicalcubit_cubit.dart';
import 'package:ir/homepage.dart';
import 'package:ir/injection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.grey.shade900,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.grey.shade900,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ResultsofsearchingargscubitCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<ResultsofsearchingclinicalcubitCubit>(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
