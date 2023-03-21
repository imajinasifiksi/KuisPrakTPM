import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'detailpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: ListView.builder(
        itemCount : listBuku.length,
        itemBuilder : (context, index){
          final DataBuku place = listBuku[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(place: place,),),
              );
            },
            child : Row(
              children : [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 3,
                  child: Image.network(place.imageLink),
                ),
                Text(place.title),
                Text(place.author),

              ],

            ),
          );
        },
      ),
    );
  }
}
