import 'package:bross/pages/login.dart';
import 'package:bross/pages/product_detail.dart';
import 'package:bross/styles/color_style.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void navigateToProductDetail(BuildContext context, String image, String name,
      String address, String description) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetail(
          image: image,
          name: name,
          address: address,
          description: description,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const ShapeDecoration(
                    color: ColorStyle.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 30,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Cari Tempat Tongkronganmu \nbersama Bross',
                              style: TextStyle(
                                color: ColorStyle.white,
                                fontSize: 20,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.logout,
                                color: ColorStyle.white,
                                size: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 130),
                      width: 320,
                      height: 40, // Ganti ukuran yang diperlukan
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 8,
                            offset: Offset(4, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            // Icon
                            const Icon(
                              Icons.search_rounded,
                            ),
                            Container(
                              padding: const EdgeInsetsDirectional.symmetric(
                                  horizontal: 6),
                              height: 20,
                              child: const VerticalDivider(
                                thickness: 1,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Cari',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi',
                    style: TextStyle(fontSize: 14, color: ColorStyle.black),
                  ),
                  Text(
                    'Selengkapnya',
                    style: TextStyle(fontSize: 14, color: ColorStyle.black),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateToProductDetail(
                            context,
                            'assets/kaedo.jpg',
                            'Coffe Kaedo',
                            'Jl. Pahlawan No. 123, Kota Kamu',
                            'Kopi Kaedo adalah kopi pilihan terbaik dengan rasa yang lezat dan aroma yang memikat.',
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 140,
                          decoration: const BoxDecoration(
                            color: ColorStyle.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 8,
                                offset: Offset(4, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/kaedo.jpg',
                                fit: BoxFit.cover,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Coffe Kaedo',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: ColorStyle.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.coffee,
                                          color: ColorStyle.primary,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigateToProductDetail(
                            context,
                            'assets/loffe.jpg',
                            'Coffe loffe',
                            'Jl. mantan No. 123, Kota Kamu',
                            'Kopi loffe adalah kopi pilihan terbaik dengan rasa yang lezat ',
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 140,
                          decoration: const BoxDecoration(
                            color: ColorStyle.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 8,
                                offset: Offset(4, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/loffe.jpg',
                                fit: BoxFit.cover,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Coffe Loffe',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: ColorStyle.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.coffee,
                                          color: ColorStyle.primary,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateToProductDetail(
                            context,
                            'assets/temu.jpg',
                            'Coffe Temu',
                            'Jl. arundam No. 123, Kota Kamu',
                            'Kopi Temu adalah tempat kopi pilihan terbaik ',
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 140,
                          decoration: const BoxDecoration(
                            color: ColorStyle.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 8,
                                offset: Offset(4, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/temu.jpg',
                                fit: BoxFit.cover,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Coffe Temu',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: ColorStyle.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.coffee,
                                          color: ColorStyle.primary,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigateToProductDetail(
                            context,
                            'assets/otten.jpg',
                            'Coffe Otten',
                            'Jl. taiwan No. 123, Kota Kamu',
                            'Kopi otten adalah tempat kopi dengan pelayanan terbaik.',
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 140,
                          decoration: const BoxDecoration(
                            color: ColorStyle.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 8,
                                offset: Offset(4, 3),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/otten.jpg',
                                fit: BoxFit.cover,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Coffe Otten',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: ColorStyle.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.coffee,
                                          color: ColorStyle.primary,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                          Icon(Icons.star,
                                              color: ColorStyle.primary,
                                              size: 15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
