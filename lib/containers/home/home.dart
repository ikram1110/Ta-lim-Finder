import 'package:flutter/material.dart';
import 'package:talim_finder/containers/home/mosque_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _mosques = [
    "Masjid Baitul Aqsa",
    "Masjid Maradekaya",
    "Masjid Amirul Mukminin",
    "Masjid Nurul Wathan",
    "Masjid Muttahidah Immim",
    "Masjid Raya Makassar"
  ];

  final List _ustadz = [
    "Ustadz Firanda Andirja",
    "Ustadz Khalid Basalamah",
    "Ustadz Abdul Somad",
    "Ustadz Sanusi Daris",
    "Ustadz Dzulkarnain",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "Home",
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Ta'lim Hari Ini",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MosqueItem(
                    child: _mosques[index],
                  );
                }),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Ta'lim Mendatang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MosqueItem(
                    child: _mosques[index],
                  );
                }),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Ustadz",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 190,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MosqueItem(
                    child: _ustadz[index],
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
