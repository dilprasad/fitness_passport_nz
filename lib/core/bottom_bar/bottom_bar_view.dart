import 'package:FitnessPassport/features/checkin_feature/checkin_view.dart';
import 'package:FitnessPassport/features/home_feature/home_view.dart';
import 'package:FitnessPassport/features/membership_feature/views/membership_view.dart';
import 'package:FitnessPassport/features/profile_feature/profile_view.dart';
import 'package:FitnessPassport/features/qrscan_feature/qrscan_view.dart';
import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  PersistentTabController? _controller;
  final bool _hideNavBar = false;
  final NavBarStyle _navBarStyle = NavBarStyle.style12;
  final bool _hideNavigationBarWhenKeyboardShows = true;
  final bool _resizeToAvoidBottomInset = true;
  final bool _stateManagement = true;
  final bool _handleAndroidBackButtonPress = true;
  final bool _popAllScreensOnTapOfSelectedTab = true;
  final bool _confineInSafeArea = true;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(
        hideStatus: _hideNavBar,
      ),
      MembershipView(
        hideStatus: _hideNavBar,
      ),
      QRScanView(
        hideStatus: _hideNavBar,
      ),
      CheckInView(
        hideStatus: _hideNavBar,
      ),
      ProfileView(
        hideStatus: _hideNavBar,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "home",
        activeColorPrimary: CustomColors.primaryBlue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_box_sharp),
        title: ("membership"),
        activeColorPrimary: CustomColors.primaryBlue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 32.0,
          child: Icon(Icons.search),
        ),
        title: ("search"),
        activeColorPrimary: CustomColors.primaryBlue,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: Colors.white,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => const MainScreen2(),
        //     '/second': (context) => const MainScreen3(),
        //   },
        // ),
        // onPressed: (context) {
        //   pushDynamicScreen(context!,
        //       screen: SampleModalScreen(), withNavBar: true);
        // },
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.qr_code_2_sharp),
        title: ("qrscan"),
        activeColorPrimary: CustomColors.primaryBlue,
        inactiveColorPrimary: Colors.grey,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => const MainScreen2(),
        //     '/second': (context) => const MainScreen3(),
        //   },
        // ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("profile"),
        activeColorPrimary: CustomColors.primaryBlue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: _confineInSafeArea,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: _handleAndroidBackButtonPress,
        resizeToAvoidBottomInset: _resizeToAvoidBottomInset,
        stateManagement: _stateManagement,
        navBarHeight: kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: _hideNavigationBarWhenKeyboardShows,
        margin: EdgeInsets.zero,
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        onWillPop: (context) async {
          // await showDialog(
          //   context: context!,
          //   useSafeArea: true,
          //   builder: (context) => Container(
          //     height: 50.0,
          //     width: 50.0,
          //     color: Colors.white,
          //     child: ElevatedButton(
          //       child: const Text("Close"),
          //       onPressed: () {
          Navigator.pop(context!);
          //     },
          //   ),
          // ),
          // );
          return true;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.indigo,
          borderRadius: BorderRadius.circular(0.0),
        ),
        popAllScreensOnTapOfSelectedTab: _popAllScreensOnTapOfSelectedTab,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: _navBarStyle,
      ),
      // Positioned(
      //   // right: MediaQuery.of(context).size.width * 0.5,
      //   bottom: 20.0,
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}
