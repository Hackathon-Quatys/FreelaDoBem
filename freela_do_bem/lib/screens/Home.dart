import 'package:flutter/material.dart';
import 'package:freela_do_bem/components/NavBar.dart';
import 'package:freela_do_bem/components/CallToActionButton.dart';
import 'package:freela_do_bem/constants/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
              children: [
                NavBar(),
                Expanded(
                  child: ScreenTypeLayout(
                    mobile: HomeMobile(),
                    desktop: HomeDesktop(),
                  ),
                ),
              ]
          ),
        ),
      ),
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
        constraints: BoxConstraints(maxWidth: 3000),
        child: child,
      ),
    );
  }
}

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SiteDetails(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CallToActionButton(
                  title: "Conheça os Projetos",
                  color: primaryColor,
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
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            SizedBox(height: 20),
            SiteDetails(),
            SizedBox(height: 30,),
            Column(
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
          ]
      ),
    );
  }
}

class SiteDetails extends StatelessWidget {
  final String _mainText = "FREELAS PARA\nFAZER A DIFERENÇA";
  final String _detailsText = "Freela do bem é uma plataforma que conecta ONGs e desenvolvedores para acelerar projetos beneficentes que deixam uma pegada positiva para o mundo!";

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        double _titleSize = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 60 : 40;
        double _descSize = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 21 : 14;
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
                  fontSize: _titleSize,
                  height: 0.9,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                _detailsText,
                style: TextStyle(
                    fontSize: _descSize,
                    height: 1.7
                ),
              )
            ],
          ),
        );
      },
    );
  }
}