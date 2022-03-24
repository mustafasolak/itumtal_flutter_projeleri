import 'package:flutter/material.dart';

void main(){
  runApp(CardWidget());
}

// açıklama satırı
class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CardWidget"),
        ),
		
		
        body: ListView(
          children: [
            Card(
              margin: EdgeInsets.all(16),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      heightFactor: 2,
                      alignment: Alignment.centerLeft,
                      child: Text("İşlemci Nedir ?",
                        style: TextStyle(
                          fontSize: 18,
                          color:Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset("assets/resimler/cpu.jpg",),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.favorite,
                          size: 35,
                          color:Colors.deepOrange,
                        ),
                        SizedBox(width: 10,),
                        Text("31 Aralık 2021"),
                        Spacer(),
                        Text("Ekleyen :admin"),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color:Color(0xffefefef),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("CPU hakkında kısa bir açıklama yazısıdır."),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("devamını oku"),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      heightFactor: 2,
                      alignment: Alignment.centerLeft,
                      child: Text("İşlemci Nedir ?",
                        style: TextStyle(
                          fontSize: 18,
                          color:Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset("assets/resimler/cpu.jpg",),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.favorite,
                          size: 35,
                          color:Colors.deepOrange,
                        ),
                        SizedBox(width: 10,),
                        Text("31 Aralık 2021"),
                        Spacer(),
                        Text("Ekleyen :admin"),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color:Color(0xffefefef),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("CPU hakkında kısa bir açıklama yazısıdır."),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("devamını oku"),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      heightFactor: 2,
                      alignment: Alignment.centerLeft,
                      child: Text("İşlemci Nedir ?",
                        style: TextStyle(
                          fontSize: 18,
                          color:Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset("assets/resimler/cpu.jpg",),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.favorite,
                          size: 35,
                          color:Colors.deepOrange,
                        ),
                        SizedBox(width: 10,),
                        Text("31 Aralık 2021"),
                        Spacer(),
                        Text("Ekleyen :admin"),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color:Color(0xffefefef),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("CPU hakkında kısa bir açıklama yazısıdır."),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("devamını oku"),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      heightFactor: 2,
                      alignment: Alignment.centerLeft,
                      child: Text("İşlemci Nedir ?",
                        style: TextStyle(
                          fontSize: 18,
                          color:Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset("assets/resimler/cpu.jpg",),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.favorite,
                          size: 35,
                          color:Colors.deepOrange,
                        ),
                        SizedBox(width: 10,),
                        Text("31 Aralık 2021"),
                        Spacer(),
                        Text("Ekleyen :admin"),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color:Color(0xffefefef),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("CPU hakkında kısa bir açıklama yazısıdır."),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("devamını oku"),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
