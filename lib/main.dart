import 'package:FitnessPassport/services/network/connection_check.dart';
import 'package:FitnessPassport/utils/themes/fp_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/globals/constants.dart';
import 'features/login_feature/views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<EInternetStatus>(
          create: (context) =>
              ConnectionCheck().internetStatusController.stream,
          initialData: EInternetStatus.iLoading,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        theme: FPTheme.lightTheme,
        // onGenerateRoute: routes.CustomRouter().generateRoute,
        home: const LoginView(),
        initialRoute: '/',
      ),
    );
  }
}
