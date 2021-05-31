import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
              width: 150,
              child: Image.asset('assets/logo.png'),
            ),
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
