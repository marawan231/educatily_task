import 'package:educatly_task/features/splash/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

/// `RouterGenerator` is a class responsible for generating routes in the application.
///
/// It contains a static instance of `PostsCubit` which is initialized in the constructor using the `getIt` function.
/// It also contains a static instance of `PageRouterBuilder` used for building routes.
class RouterGenerator {
  // final PostsCubit postsCubit;

  RouterGenerator() {
    // postsCubit = getIt<PostsCubit>();
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(
          const SplashView(),
          settings: settings,
        );

      // case NamedRoutes.home:
      //   return _pageRouter.build(
      //     BlocProvider.value(
      //       value: getIt<CurrenciesCubit>(),
      //       child: const HomeView(),
      //     ),
      //     settings: settings,
      //   );
    }
  }
}
