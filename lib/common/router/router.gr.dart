// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_mobx_dio_boilerplate/common/router/router_auth_guard.dart'
    as _i8;
import 'package:flutter_mobx_dio_boilerplate/features/home/ui/pages/home.dart'
    as _i2;
import 'package:flutter_mobx_dio_boilerplate/features/login/ui/pages/login.dart'
    as _i3;
import 'package:flutter_mobx_dio_boilerplate/features/page_not_found/ui/pages/page_not_found.dart'
    as _i5;
import 'package:flutter_mobx_dio_boilerplate/features/profile/ui/pages/profile.dart'
    as _i4;
import 'package:flutter_mobx_dio_boilerplate/features/splash/ui/pages/splash.dart'
    as _i1;

class RootRouter extends _i6.RootStackRouter {
  RootRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.routerAuthGuard})
      : super(navigatorKey);

  final _i8.RouterAuthGuard routerAuthGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.HomeScreen(key: args.key, dummyValue: args.dummyValue));
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.LoginScreen(
              key: args.key, redirectOnLogin: args.redirectOnLogin));
    },
    ProfileScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ProfileScreen());
    },
    PageNotFoundScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PageNotFoundScreenRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.PageNotFoundScreen(args.routeName));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splashScreen', fullMatch: true),
        _i6.RouteConfig(SplashScreenRoute.name, path: '/splashScreen'),
        _i6.RouteConfig(HomeScreenRoute.name, path: '/homeScreen'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/loginScreen'),
        _i6.RouteConfig(ProfileScreenRoute.name,
            path: '/profileScreen', guards: [routerAuthGuard]),
        _i6.RouteConfig(PageNotFoundScreenRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(SplashScreenRoute.name, path: '/splashScreen');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({_i7.Key? key, String? dummyValue})
      : super(HomeScreenRoute.name,
            path: '/homeScreen',
            args: HomeScreenRouteArgs(key: key, dummyValue: dummyValue));

  static const String name = 'HomeScreenRoute';
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key, this.dummyValue});

  final _i7.Key? key;

  final String? dummyValue;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key, dummyValue: $dummyValue}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute(
      {_i7.Key? key, required _i6.PageRouteInfo<dynamic>? redirectOnLogin})
      : super(LoginScreenRoute.name,
            path: '/loginScreen',
            args: LoginScreenRouteArgs(
                key: key, redirectOnLogin: redirectOnLogin));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key, required this.redirectOnLogin});

  final _i7.Key? key;

  final _i6.PageRouteInfo<dynamic>? redirectOnLogin;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, redirectOnLogin: $redirectOnLogin}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(ProfileScreenRoute.name, path: '/profileScreen');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i5.PageNotFoundScreen]
class PageNotFoundScreenRoute
    extends _i6.PageRouteInfo<PageNotFoundScreenRouteArgs> {
  PageNotFoundScreenRoute({required String routeName})
      : super(PageNotFoundScreenRoute.name,
            path: '*', args: PageNotFoundScreenRouteArgs(routeName: routeName));

  static const String name = 'PageNotFoundScreenRoute';
}

class PageNotFoundScreenRouteArgs {
  const PageNotFoundScreenRouteArgs({required this.routeName});

  final String routeName;

  @override
  String toString() {
    return 'PageNotFoundScreenRouteArgs{routeName: $routeName}';
  }
}
