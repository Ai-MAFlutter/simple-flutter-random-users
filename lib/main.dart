import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/screens/user_screen.dart';

import 'providers/random_user_provider.dart';
import 'cubits/users_cubit.dart'; 
import 'cubits/users_state.dart'; 

void main() {
  runApp(
    MultiProvider(
      providers: [
        
        BlocProvider(create: (context) => UsersCubit()),

        ChangeNotifierProvider(create: (context) => RandomUserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RandomUserSingleScreen(), 
    );
  }
}
