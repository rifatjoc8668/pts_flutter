import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double hargaSepatu = 12400.0;
  int index_sepatu = 1;

  double hargaKacamata = 7000.0;
  int index_Kacamata = 1;

  double hargaJaket = 1500.0;
  int index_jaket = 1;

  double ongkir = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 24,bottom: 16),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Iconsax.arrow_left,
                color: Colors.black,
                size: 26,
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 23, left: 24,bottom: 20),
          child: Center(
            child: Text(
              'Keranjang',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 24,bottom: 16),
            child: Icon(
              Iconsax.more,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Iconsax.location),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Dikirim ke',
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                          Text('Ubah',
                              style: TextStyle(color: Color(0xff00B14F)))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Jakarta, Cibubur,\n Kota Wisata Madrid No 23',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                _Sepatu(),
                SizedBox(height: 24,),
                _Kacamata(),
                SizedBox(height: 24,),
                _Jaket(),
                SizedBox(height: 90,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal', style: TextStyle(color: Colors.grey[500],fontSize: 16),),
                        Text('${hargaJaket + hargaSepatu + hargaKacamata}0',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ongkir',style: TextStyle(color: Colors.grey[500],fontSize: 16),),
                        Text('${ongkir}00',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Divider(
                        height: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(color: Colors.grey[500],fontSize: 16),),
                        Text('${hargaJaket + hargaSepatu + hargaKacamata + ongkir }00',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 24,bottom: 17, left: 24, right: 24),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff00B14F),
            borderRadius: BorderRadius.circular(8)
          ),
          child: TextButton(
            onPressed: (){}, 
            child: Text('Tambah Keranjang',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),)
          ),
        ),
      ),
    );
  }

  Row _Sepatu() {
    return Row(
      children: [
        Image.asset(
          'assets/gambar2.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Balance 992 ...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('40'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaSepatu}00')
          ],
        ),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (index_sepatu > 1) {
                      setState(() {
                        hargaSepatu /= 2;
                        index_sepatu -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_sepatu}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaSepatu *= 2;
                      index_sepatu += 1;
                    });
                  },
                  icon: Icon(
                    Iconsax.add,
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }



  Row _Kacamata() {
    return Row(
      children: [
        Image.asset(
          'assets/Rectangle4.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kacamata Baca ...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('-2, Hitam'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaKacamata}00')
          ],
        ),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (index_Kacamata > 1) {
                      setState(() {
                        hargaJaket /= 2;
                        index_Kacamata -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_Kacamata}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaKacamata *= 2;
                      index_Kacamata += 1;
                    });
                  },
                  icon: Icon(
                    Iconsax.add,
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }



  Row _Jaket() {
    return Row(
      children: [
        Image.asset(
          'assets/Rectangle6.png',
          width: 100,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Human Greatness ,,,',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 6,
            ),
            Text('XL, Hitam'),
            SizedBox(
              height: 16,
            ),
            Text('Rp ${hargaJaket}00')
          ],
        ),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (index_jaket > 1) {
                      setState(() {
                        hargaJaket /= 2;
                        index_jaket -= 1;
                      });
                    }
                  },
                  icon: Icon(
                    Iconsax.minus,
                    size: 20,
                  )),
              Text(
                '${index_jaket}',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      hargaJaket *= 2;
                      index_jaket += 1;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 20,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
