import 'package:flutter/material.dart';
import 'data_buku.dart';

class DetailPage extends StatelessWidget {
  final DataBuku place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(place.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /3,
            child: ListView(
              children: [
                Image.network(place.imageLink),
              ],
            ),
          ),
          Text('Judul : ${place.title}'),
          Text('Penulis : ${place.author}'),
          Text('Bahasa : ${place.language}'),
          Text('Negara : ${place.country}'),
          Text('Jumlah Halaman : ${place.pages}'),
          Text('Tahun Terbit : ${place.year}'),
          //Text('Status : ${place.isAvailable}'),
          ElevatedButton(
          onPressed: () {},
            child: Text('Pinjam Buku'),
          ),
        ],
      ),
    );
  }
}
