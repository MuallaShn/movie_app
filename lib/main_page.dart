import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasarim_calismasi_odev/consts/Project_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dehaze_outlined))
        ],
        backgroundColor: ProjectColors.midnightBlue,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
        title: Text(d!.movieBaslik,
            style: TextStyle(
                color: ProjectColors.white, fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/interstellar.png",
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Chip(icerik: d.movieName),
                  Chip(
                    icerik: d.movieType,
                  ),
                  Chip(
                    icerik: d.movieSub,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(d.movieFiyat,
                    style: TextStyle(
                        color: ProjectColors.white,
                        fontSize: ekranGenisligi / 20)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    d.butonYazi,
                    style: TextStyle(
                        color: ProjectColors.white,
                        fontSize: ekranYuksekligi / 35,
                        fontFamily: "Fredoka",
                        fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: ProjectColors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: ProjectColors.midnightBlue,
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(color: ProjectColors.white),
    );
  }
}
