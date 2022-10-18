import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vidiopleyer/home.dart';
import 'package:vidiopleyer/homeProvider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<HomeProvider>(create: (context)=>HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Home_Screen(),
        },
      ),
    )
  );
}