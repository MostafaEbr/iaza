import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/config/router/routes_name.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/images/app_svgs.dart';
import '../cubit/splash_cubit.dart';
import '../cubit/splash_states.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const route = '/splash';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
    return BlocProvider<SplashCubit>(
      create: (BuildContext context) =>SplashCubit()..loadSplash(),
      child: BlocListener<SplashCubit,SplashStates>(
        listener: (BuildContext context, state) {
          if(state is SplashSuccess){
            context.goNamed(RoutesName.products);
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.backgroundColor,
          body: SafeArea(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
