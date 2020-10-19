import 'package:aplikasi_kesebelas/data/data_detail.dart';
import 'package:flutter/material.dart';

class dataMotivasi extends StatefulWidget {
  @override
  _dataMotivasiState createState() => _dataMotivasiState();
}

class _dataMotivasiState extends State<dataMotivasi> {
  //buat yg hori
  List<String> motivasiNama = [
    'Berusaha',
    'Pantang menyerah',
    'Gembira',
    'Nikmati',
    'Jalani',
  ];
  List<String> motivasiGambar = [
    'assets/images/pokus.jpeg',
    'assets/images/run.jpeg',
    'assets/images/alone.jpeg',
    'assets/images/camera.jpeg',
    'assets/images/egge.jpeg',
  ];

  //buat yg verti
  List<String> judul = [
    'Kehidupan & Kenyataan',
    'Pertemanan & Persahabatan',
    'Dunia & Lingkungan',
    'Kegagalan & Penderitaan',
    'Berusaha & Bentukan',
    'Asmara & Percintaan'
  ];
  List<String> gambar = [
    'assets/images/jongun.jpeg',
    'assets/images/prend.jpeg',
    'assets/images/live.jpeg',
    'assets/images/broken.jpeg',
    'assets/images/dontgiveup.jpeg',
    'assets/images/love.jpeg'
  ];

  List<String> detailData = [
    '"Kamu dilahirkan untuk menjadi apa adanya dirimu, bukan untuk menjadi sempurna."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung',
    '"Banggalah dengan siapa dirimu, dan jangan malu dengan cara orang lain melihatmu."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung',
    '"Jika kamu bisa memimpikannya, kamu bisa melakukannya."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung',
    '"Semakin awal kau memulai pekerjaan, semakin awal pula kau akan melihat hasilnya."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung',
    '"Jangan menyerah. Menderitalah sekarang dan hiduplah sebagai juara nantinya."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung',
    '"Tidak perlu sempurna untuk menginspirasi orang lain. Biarkan orang lain terinspirasi oleh bagaimana kamu menangani ketidaksempurnaanmu."\nLorem ipsum wkwkkwwk awkowakowaok kokoko ini cuma buat spam\n ini spam yah bingung'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Container(
              //horizontal
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: motivasiNama.length,
                  itemBuilder: (context, indexx) {
                    final namaMOtiv = motivasiNama[indexx].toString();
                    final gambarMotiv = motivasiGambar[indexx].toString();
                    return Container(
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(gambarMotiv,
                                  height: 80, width: 150, fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 80,
                            width: 150,
                            child: Text(
                              namaMOtiv,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              //vertical
              height: MediaQuery.of(context).size.height - 000,
              margin: EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: judul.length,
                  itemBuilder: (context, index) {
                    final judulMOtiv = judul[index].toString();
                    final imageMOtiv = gambar[index].toString();
                    final isiMotov = detailData[index].toString();
                    return Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataDetail(
                                        gambarDetail: imageMOtiv,
                                        judulDetail: judulMOtiv,
                                        isiDetail: isiMotov,
                                      )));
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                imageMOtiv,
                                height: 130,
                                width: 390,
                                fit: BoxFit.cover,
                              ),
                              margin: EdgeInsets.only(bottom: 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 130,
                              width: 390,
                              child: Text(
                                judulMOtiv,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
