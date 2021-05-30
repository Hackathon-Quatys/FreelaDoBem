import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freela Do Bem',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans',
        ),
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavBar(),
            Expanded(
              child: Row(
                  children: [
                    SiteDetails(),
                  ]
              ),
            ),
          ],
        ),
      )
    );
  }
}

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

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 2400),
        child: child,
      ),
    );
  }
}

class SiteDetails extends StatelessWidget {
  String _mainText = "FREELAS PARA\nFAZER A DIFERENÇA";
  String _detailsText = "Freela do bem é uma plataforma que conecta ONGs e desenvolvedores para acelerar projetos beneficentes que deixam uma pegada positiva para o mundo!";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _mainText,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 60,
              height: 0.9,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            _detailsText,
            style: TextStyle(
              fontSize: 21,
              height: 1.7
            ),
          )
        ],
      ),
    );
  }


}