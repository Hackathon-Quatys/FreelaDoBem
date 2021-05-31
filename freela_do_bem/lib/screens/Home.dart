import 'package:flutter/material.dart';
import 'package:freela_do_bem/components/NavBar.dart';
import 'package:freela_do_bem/components/CallToActionButton.dart';

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
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CallToActionButton(
                              title: "Conheça os Projetos",
                              color: Color.fromARGB(255, 31, 229, 146),
                            ),
                            SizedBox(height: 30,),
                            CallToActionButton(
                              title: "Inscreva seu projeto",
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        )
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