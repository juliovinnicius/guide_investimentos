import 'package:get/get.dart';
import 'package:guide_investimentos/modules/chart_cariation/presentation/pages/chart_variation_page.dart';
import 'package:guide_investimentos/modules/select_page/select_page.dart';
import 'package:guide_investimentos/modules/splash/splash_page.dart';

appRoutes() => [
      GetPage(
        name: '/splash',
        page: () => const SplashPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/select-page',
        page: () => const SelectPage(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/chart-variation',
        page: () => const ChartVariationPage(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
