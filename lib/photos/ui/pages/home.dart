// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ejemplo1/photos/ui/widgets/photo_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PhotoCard(
          url:
              "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen.jpg",
          title: "Mario",
          article: "Mario anda jugando xdxd",
          icon: Icons.linked_camera,
          iconColor: Colors.red,
        ),
        PhotoCard(
          url:
              "https://wwwhatsnew.com/wp-content/uploads/2020/02/optimizadores.jpg",
          title: "Deraemon",
          article: "Doraemon XDXD",
          icon: Icons.baby_changing_station,
          iconColor: Colors.blue,
        ),
        PhotoCard(
            url:
                "https://cnnespanol.cnn.com/wp-content/uploads/2022/07/220713165438-rba-web-nasa-full-169.jpg?quality=100&strip=info&w=414&h=311&crop=1",
            title: "GALAXY",
            article: "IDK WHAT PUT HERE",
            iconColor: Colors.purple,
            icon: Icons.favorite),
        PhotoCard(
            url:
                "https://josefacchin.com/wp-content/uploads/2020/02/como-quitar-el-fondo-de-una-imagen.png",
            title: "Imagens",
            article: "computersd",
            iconColor: Colors.green,
            icon: Icons.favorite),
        PhotoCard(
          url:
              "https://kinsta.com/es/wp-content/uploads/sites/8/2020/10/tipos-de-archivos-de-imagen.png",
          title: "Hand painting",
          article: "You can view a hand above the cards",
          iconColor: Colors.cyan,
          icon: Icons.account_balance_wallet_rounded,
        ),
        PhotoCard(
            url:
                "https://lh3.googleusercontent.com/GTmuiIZrppouc6hhdWiocybtRx1Tpbl52eYw4l-nAqHtHd4BpSMEqe-vGv7ZFiaHhG_l4v2m5Fdhapxw9aFLf28ErztHEv5WYIz5fA",
            title: "Android",
            article: "Re loco ",
            iconColor: Colors.green,
            icon: Icons.android),
        PhotoCard(
            url:
                "https://e00-expansion.uecdn.es/assets/multimedia/imagenes/2020/06/23/15929250990530.jpg",
            title: "Gym",
            article: "Jonathan levanta 45 lbs en press banca",
            iconColor: Colors.cyan,
            icon: Icons.accessibility_new_sharp)
      ],
    );
  }
}
