import 'package:get/get.dart';
import 'package:test/Bindings/home_page_binding.dart';
import 'package:test/Bindings/onbording_first_binding.dart';
import 'package:test/Bindings/onbording_second_page_bindings.dart';
import 'package:test/Bindings/product_api_binding.dart';
import 'package:test/Bindings/user_interaction_bindings.dart';
import 'package:test/Views/Home_Page/home_page.dart';
import 'package:test/Utils/routes.dart';
import 'package:test/Views/ApiHandle/fetch_product_api.dart';
import 'package:test/Views/Onbording/onbordingSecond_page.dart';
import 'package:test/Views/Onbording/onbordingStart_page.dart';
import 'package:test/Views/UserInteraction/user_interaction.dart';
class AppPages{
static List<GetPage> getPages = [
  GetPage(
    name: onBordinFirstgpageRoute,
    page: () => const OnbordingFirstScreen(),
    binding: OnbordingFirstBinding(),
  ),
  GetPage(
    name: onBordingSecondpageRoute,
    page: () => const OnbordingSecondScreen(),
    binding: OnbordingSecondBinding(),
  ),
    GetPage(
    name: apiProductpageRoute,
    page: () => const FetchProductAPi(),
    binding: ProductApiBinding(),
  ),
    GetPage(
    name: userInteractionPageRoute,
    page: () => const UserInterActionScreen(),
    binding: UserInteractionBinding(),
  ),
  GetPage(
    name: homePageRoute,
    page: () => const HomeScreen(),
    binding: HomePageBinding(),
  ),
];

}
