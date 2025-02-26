import 'package:assignment/core/constants/allExport.dart';

class AppProvider {
  static final List<SingleChildWidget> appProviders = [
    ChangeNotifierProvider(create: (_) => HomeProvider()),
  ];
}
