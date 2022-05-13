import 'package:flutter/material.dart';

class Ders12_DrawerMenu extends StatelessWidget {
  Ders12_DrawerMenu({Key? key}) : super(key: key);

  List<Icon> ikonlar = [
    Icon(
      Icons.home,
      color: Colors.blue,
    ),
    Icon(
      Icons.punch_clock,
      color: Colors.red,
    ),
    Icon(
      Icons.contact_mail,
      color: Colors.green,
    ),
    Icon(
      Icons.settings,
      color: Colors.black,
    )
  ];

  List<String> menu_text = ["Ana Sayfa", "Hakkımızda", "İletişim", "Ayarlar"];

  List<String> rotalar = [
    "/ders12_drawer_widget",
    "/ders12_hakkimizda",
    "/ders12_iletisim",
    "/ders12_ayarlar",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: buildDrawer(context),
        appBar: AppBar(
          actions: [],
          title: Text(
            "İstanbul Kart Uygulaması",
          ),
        ),
        body: Text("Selam"),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Text("İstanbul Kart Menü"),
                  Divider(),
                  Container(
                      height: 100,
                      child: Image.asset("assets/sehir/sehir2.jpg",
                          fit: BoxFit.contain)),
                ],
              ),
            ),
            for (int sayac = 0; sayac < ikonlar.length; sayac++)
              ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${menu_text[sayac]} tıklandı."),
                      backgroundColor: Colors.greenAccent,
                    ),
                  );

                  if (sayac != 0) Navigator.pushNamed(context, rotalar[sayac]);
                },
                leading: ikonlar[sayac],
                title: Text(menu_text[sayac]),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
          ],
        ),
      ),
    );
  }
}
