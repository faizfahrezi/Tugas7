import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(fontFamily: 'Times'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'image/inaklug.png',
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('HOME', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('TENTANG KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('LAYANAN KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('ARTIKEL', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('HUBUNGI KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 10,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'image/inaklug.png',
                    fit: BoxFit.contain,
                    height: 90,
                  ),
                  const Text(
                    'Inaklug',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/dresden2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, right: 10, bottom: 10, left: 20),
                    child: Text(
                      'Tentang Kami',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'PROFIL',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: 'Didirikan pada tahun 2018, Ini membuktikan bahwa INAKLUG Merupakan konsultan pendidikan internasional yang berpengalaman terbesar, terpercaya dan juga memiliki jam terbang tinggi untuk melayani para anak anak muda Indonesia untuk menuntut ilmu di berbagai negara maju dunia.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Times',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset('image/berlin.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ], // Closing parenthesis was placed correctly
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Visi',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: 'Membangun Sumber Daya Indonesia yang mempunyai daya saing tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin Indonesia masa depan yang tangguh, mandiri, dan profesional.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Times',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset('image/studytour.png',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Misi',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: 'Membangun Sumber Daya Indonesia yang mempunyai daya saing tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin Indonesia masa depan yang tangguh, mandiri, dan profesional.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Times',
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  width: 250,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Text(
                      'Layanan Kami',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 15,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepPurple,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Align(
                alignment: Alignment.center,
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                thickness: 0.9,
                indent: 20,
                endIndent: 20,
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Hubungi Kami',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Kantor Pusat',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'MULA BY GALERIA JAKARTA, CILANDAK',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'TOWN SQUARE, LT. BASEMENT.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Phone: 085286754052',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 200,
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'LOKASI KAMI',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.blue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'KIRIM PESAN',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 70),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Text(
                    'Copyright 2022 - Inaklug Indonesia Hak Cipta dilindungi Undang-Undang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
