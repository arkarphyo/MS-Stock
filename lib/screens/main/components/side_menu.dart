import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  final Widget widget;
  const SideMenu({
    Key? key, required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerWidget(child: widget,);
  }
}

class DrawerWidget extends StatelessWidget {
  
  final Widget child;
  const DrawerWidget({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.network("http://43.242.135.98:5000/ms_data/cdn/image/logo/moonsun_logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              print("Dashboard");
              //MainScreen.screenChageDynamic(child);
            },
          ),
          DrawerListTile(
            title: "Approved Letters",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              print("Approved Letters");
            },
          ),
          DrawerListTile(
            title: "Station Letters",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              print("Station Letters");
            },
          ),
          DrawerListTile(
            title: "IT Documents",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Installers",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              
            },
          ),
          DrawerListTile(
            title: "Stocks",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              
            },
          ),
          DrawerListTile(
            title: "Billing & Emails",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
