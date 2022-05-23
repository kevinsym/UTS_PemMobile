import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sistem Informasi Geografis'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.yellow,
                  ],
                ),

              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(

                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/profilepict.jpg'),
                    ),
                  ),
                  Text('Kevin Semuel Yuri Mulyadi'),
                  Text('20190801052'),
                ],
              ),
            ),
            Text('''
Studi Kasus UTS
Pemograman Mobile
Sistem Informasi Geografis
Kecamatan Panongan''',
              textAlign: TextAlign.center,),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Kecamatan Panongan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
            ),
            Expanded(
              child:
                FlutterMap(
                  options:
                  MapOptions(center: LatLng(-6.2852050, 106.5262344), zoom: 13.5),
                  layers: [
                    TileLayerOptions(
                        urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a'])
                  ],
                ),
            ),


          ],
        ),

      ),

      bottomNavigationBar: BottomAppBar(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VisiMisi()),
                );
              },
              child: Text('Visi'),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                ),
                onPressed: (){},
                child: Text('Home')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Info()),
                  );
                },
                child: Text('Info')
            )

          ],
        ),
      ),
    );
  }
}

class VisiMisi extends StatelessWidget {
  const VisiMisi({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageVisiMisi(title: 'Sistem Informasi Geografis'),
    );
  }
}

class PageVisiMisi extends StatefulWidget {
  const PageVisiMisi({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<PageVisiMisi> createState() => _VisiMisiStage();
}

class _VisiMisiStage extends State<PageVisiMisi> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),

              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(

                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/profilepict.jpg'),
                    ),
                  ),
                  Text('Kevin Semuel Yuri Mulyadi'),
                  Text('20190801052'),
                ],
              ),
            ),
            Text('''
Studi Kasus UTS
Pemograman Mobile
Sistem Informasi Geografis
Kecamatan Panongan''',
              textAlign: TextAlign.center,),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Kecamatan Panongan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
              ),
            ),

            Text(' '),

            Container(
              alignment: Alignment.center,
              child:
              Text(
                  '''Visi Kecamatan Panongan adalah:
 ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
            Container(
              alignment: Alignment.center,
              child:
              Text(
                '''
“ MENUJU Kecamatan Panongan YANG LEBIH BAIK, MAJU DAN MANDIRI“

 ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child:
              Text(
                '''
Misi Kecamatan Panongan adalah:

 ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child:
              Text(
                '''
1.   Melakukan Pembangunan Fisik Maupun Non Fisik Secara Berkelanjutan di Kecamatan Panongan.

2.    Meningkatkan Pelayanan kepada masyarakat umum.

3.   Melaksanakan Pembinaan  dan bimbingan Generasi Muda Secara Berkala.

4.    Meningkatkan Kerukunana antar warga Kecamatan Panongan tanpa melihat suku, Agama dan khasta.

 ''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),


            Expanded(
                child:
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                        ),
                        onPressed: (){},
                        child: Text('Visi'),
                      ),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyApp()),
                            );
                          },
                          child: Text('Home')
                      ),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Info()),
                            );
                          },
                          child: Text('Info')
                      )

                    ],
                  ),
                )
            )
          ],
        ),

      ),
    );
  }
}


class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageInfo(title: 'Sistem Informasi Geografis'),
    );
  }
}

class PageInfo extends StatefulWidget {
  const PageInfo({Key? key, required this.title}) : super(key: key);


  final String title;


  @override
  State<PageInfo> createState() => _InfoStage();
}

class _InfoStage extends State<PageInfo> {

  String value = 'Klik Pilihan Yang Ingin Ditampilkan';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),

              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(

                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/profilepict.jpg'),
                    ),
                  ),
                  Text('Kevin Semuel Yuri Mulyadi'),
                  Text('20190801052'),
                ],
              ),
            ),
            Text('''
Studi Kasus UTS
Pemograman Mobile
Sistem Informasi Geografis
Kecamatan Panongan''',
              textAlign: TextAlign.center,),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Kecamatan Panongan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),

            Image.asset(
              'assets/kabtang.png',
              height: 150,
            ),

            Expanded(
                child:
                Align(
                  alignment: FractionalOffset.topCenter,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            value = '''
    Luas Wilayah Panongan :
     
                  35,62 Km²''';
                          });
                        },
                        child: Text('Luas Wilayah'),
                      ),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              value = '''
    Jumlah Penduduk Di Panongan : 
                              
                      130.489 Jiwa''';
                            });
                          },
                          child: Text('Jumlah Penduduk')
                      ),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              value = ''' 
      Daftar Desa Di Panongan:
      
          1. Ciakar
          2. Mekar Bakti
          3. Mekar Jaya
          4. Panongan
          5. Peusar
          6. Ranca Iyuh
          7. Ranca Kalapa
          8. Serdang Kulon ''';
                            });
                          },
                          child: Text('Daftar Desa')
                      )

                    ],
                  ),
                )
            ),
            Text(
              '$value',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),

            Expanded(
                child:
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(

                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const VisiMisi()),
                          );
                        },
                        child: Text('Visi'),
                      ),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyApp()),
                            );
                          },
                          child: Text('Home')
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                          ),
                          onPressed: (){},
                          child: Text('Info')
                      )

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}


