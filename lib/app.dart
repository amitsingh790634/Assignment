import 'package:assignment/core/constants/allExport.dart';

class MyPhone extends StatelessWidget {
  const MyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return MaterialApp(
      title: AppStrings.appName,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        canvasColor: AppColors.kLightBackground,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
