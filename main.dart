import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radhey_knit_llp/constants/colorConstants.dart';
import 'package:radhey_knit_llp/screens/BrancheDetails/bloc/brancheDetails_bloc.dart';
import 'package:radhey_knit_llp/screens/BrancheDetails/brancheDetails.dart';
import 'package:radhey_knit_llp/screens/Branches/bloc/branches_bloc.dart';
import 'package:radhey_knit_llp/screens/CheckCreditLimit/checkCreditLimit.dart';
import 'package:radhey_knit_llp/screens/Complain/bloc/complain_bloc.dart';
import 'package:radhey_knit_llp/screens/Complain/complain.dart';
import 'package:radhey_knit_llp/screens/ContactUs/bloc/contactUs_bloc.dart';
import 'package:radhey_knit_llp/screens/ContactUs/contactUs.dart';
import 'package:radhey_knit_llp/screens/HomePage/homePage.dart';
import 'package:radhey_knit_llp/screens/Ledger/bloc/ledger_bloc.dart';
import 'package:radhey_knit_llp/screens/LoginPage/bloc/login_bloc.dart';
import 'package:radhey_knit_llp/screens/LoginWithUserId/bloc/loginWithUserId_bloc.dart';
import 'package:radhey_knit_llp/screens/LoginWithUserId/loginWithUserId.dart';
import 'package:radhey_knit_llp/screens/OrderDetails/bloc/orderDetails_bloc.dart';
import 'package:radhey_knit_llp/screens/OrderDetails/orderDetails.dart';
import 'package:radhey_knit_llp/screens/OtpLogin/bloc/otpLogin_bloc.dart';
import 'package:radhey_knit_llp/screens/RegistrationForm/bloc/registrationForm_bloc.dart';
import 'package:radhey_knit_llp/screens/RegistrationForm/registrationForm.dart';
import 'package:radhey_knit_llp/screens/SalesReport/bloc/salesReport_bloc.dart';
import 'package:radhey_knit_llp/screens/SalesReport/salesReport.dart';
import 'package:radhey_knit_llp/screens/SubBranches/bloc/subBranches_bloc.dart';
import 'package:radhey_knit_llp/screens/SubBranches/subBranches.dart';
import 'package:radhey_knit_llp/screens/orderNewEnteryScreen/bloc/orderNewEntry_bloc.dart';
import 'package:radhey_knit_llp/screens/orderNewEnteryScreen/checkboxes.dart';
import 'package:radhey_knit_llp/screens/SplashScreen/splashScreen.dart';
import 'package:radhey_knit_llp/screens/orderNewEnteryScreen/orderNewEntry.dart';
import 'screens/LoginPage/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: (context,child) => MultiBlocProvider(
          providers: [
            BlocProvider<BrancheDetailsBloc>(
                create: (context) => BrancheDetailsBloc(),),
            BlocProvider<BranchesBloc>(
              create: (context) => BranchesBloc(),),
            // BlocProvider<CheckCreditLimitBloc>(
            //   create: (context) => CheckCreditLimitBloc(),),
            BlocProvider<ComplainBloc>(
              create: (context) => ComplainBloc(),),
            BlocProvider<ContactUsBloc>(
              create: (context) => ContactUsBloc(),),
            BlocProvider<LedgerBloc>(
              create: (context) => LedgerBloc(),),
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),),
            BlocProvider<LoginWithUserIdBloc>(
              create: (context) => LoginWithUserIdBloc(),),
            BlocProvider<OrderDetailsBloc>(
              create: (context) => OrderDetailsBloc(),),
            BlocProvider<OrderNewEntryBloc>(
              create: (context) => OrderNewEntryBloc(),),
            BlocProvider<OtpLoginBloc>(
              create: (context) => OtpLoginBloc(),),
            BlocProvider<RegistrationFormBloc>(
              create: (context) => RegistrationFormBloc(),),
            BlocProvider<SalesReportBloc>(
              create: (context) => SalesReportBloc(),),
            // BlocProvider<SplashScreenBloc>(
            //   create: (context) => SplashScreenBloc(),),
            BlocProvider<SubBranchesBloc>(
              create: (context) => SubBranchesBloc(),),



          ], child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Anapurna Sales',
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: ColorConstants.primaryColor,
            secondaryHeaderColor: ColorConstants.primaryColor,
            appBarTheme: AppBarTheme(color:ColorConstants.primaryColor),
            // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF4A52)),
            useMaterial3: true,
          ),
          // onGenerateInitialRoutes: (settings) => routes.controller(settings),
          // initialRoute: routes.splashPage,
          home: const MyHomePage(),
        ),
        )


      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
