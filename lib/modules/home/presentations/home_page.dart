import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nonton_id/core/constant/color_constant.dart';
import 'package:nonton_id/core/constant/image_constant.dart';
import 'package:nonton_id/modules/bioskop/presentations/pages/bioskop_page.dart';
import 'package:nonton_id/modules/home/presentations/layout_widget_page.dart';
import 'package:nonton_id/modules/home/presentations/sample_page.dart';
import 'package:nonton_id/modules/profile/presentations/pages/profile_page.dart';
import 'package:nonton_id/modules/ticket/presentations/pages/ticket_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: selectedIndex.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: PageView(
        controller: pageController,
        children: const [
          HomeScreen(),
          TicketPage(),
          BioskopPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, selected, _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex.value,
            backgroundColor: AppColors.secondaryColor,
            selectedItemColor: AppColors.yellowColor,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedLabelStyle: const TextStyle(
              color: AppColors.yellowColor,
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
            onTap: (index) {
              selectedIndex.value = index;
              pageController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.bottomIconHome,
                  color: selectedIndex.value == 0
                      ? AppColors.yellowColor
                      : Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.bottomIconTicket,
                  color: selectedIndex.value == 1
                      ? AppColors.yellowColor
                      : Colors.white,
                ),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.bottomIconBioskop,
                  color: selectedIndex.value == 2
                      ? AppColors.yellowColor
                      : Colors.white,
                ),
                label: 'Bioskop',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  ImageConstant.bottomIconProfil,
                  color: selectedIndex.value == 3
                      ? AppColors.yellowColor
                      : Colors.white,
                ),
                label: 'Profil',
              ),
            ],
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayoutWidgetPage(),
                  ),
                );
              },
              child: const Text(
                'Layouting Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SamplePage(),
                  ),
                );
              },
              child: const Text(
                'Go To Sample page',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
