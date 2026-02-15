import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartsearch/Args/cubit/cubit/resultsofsearchingargscubit_cubit.dart';
import 'package:smartsearch/Clinical%20Trials/cubit/cubit/resultsofsearchingclinicalcubit_cubit.dart';
import 'package:smartsearch/homepage.dart';
import 'package:smartsearch/injection.dart';

void main() async {
  await configureDependencies();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ResultsofsearchingclinicalcubitCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ResultsofsearchingargscubitCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
