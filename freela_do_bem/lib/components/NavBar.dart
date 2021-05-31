import 'package:flutter/material.dart';
import 'package:freela_do_bem/constants/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTabletDesktop(),
    );
  }

}

class NavBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.menu)),
            _NavBarLogo(),
          ],
        )
    );
  }
}

class NavBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _NavBarLogo(),
            Row(
              children: [
                _NavBarItem(title: "Projetos"),
                SizedBox(width: 60,),
                _NavBarItem(title: "Sobre"),
                SizedBox(width: 60,),
                _NavBarItem(title: "Login"),
              ],
            )
          ],
        )
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30,),
          _NavBarItem(title: title)
        ]
      ),
    );
  }
}

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Freela do Bem',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            "Faça a diferença",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 16)],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('Projetos', Icons.computer),
          DrawerItem('Sobre', Icons.info),
          DrawerItem('Login', Icons.login),
        ],
      )
    );
  }
  
}

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}

class _NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset('assets/logo.png'),
    );
  }

}
