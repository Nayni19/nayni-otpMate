import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_app/home/homepage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otp Mate',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFf3ecf9),),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: 'images/splash.png',
        duration: 3000,
        animationDuration: const Duration(milliseconds: 2000),
        nextScreen: const HomePage(),
        splashIconSize: 200,
        backgroundColor: const Color(0xffF1EDFF),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
      ),
    );
  }
}
