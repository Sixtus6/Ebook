import 'dart:ui';
import 'package:wallet_connect/wallet_connect.dart';
import 'package:ebook/constants.dart';
import 'package:ebook/screens/mydrawer.dart';
import 'package:ebook/screens/viewallscreens.dart';
import 'package:ebook/size_config.dart';
import 'package:ebook/theme/themebutton.dart';
import 'package:flutter/material.dart';

class mainhomepage extends StatefulWidget {
  const mainhomepage({Key? key}) : super(key: key);

  @override
  _mainhomepageState createState() => _mainhomepageState();
}

class _mainhomepageState extends State<mainhomepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarjjkTheme'
        : 'Ligh=tTheme';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MeBook',
          style: TextStyle(color: Colors.teal),
        ),
        actions: [themebutton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                  Icon(Icons.search)
                ],
              ),
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(15),
                  left: getProportionateScreenWidth(30),
                  right: getProportionateScreenWidth(30),
                  bottom: getProportionateScreenHeight(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor.withOpacity(0.2),
              ),
              width: getProportionateScreenWidth(300),
              height: getProportionateScreenHeight(40),
            ),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(8),
                    left: getProportionateScreenWidth(8),
                  ),
                  child: Center(
                    child: Text(
                      'Book Store',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                        //scolor: Colors.red,
                        )),
                Container(
                  margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      right: getProportionateScreenWidth(7)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => viewallscreens()),
                        );
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // itemCount: 1,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal),
                                  //   border: Border.all(color: yellowborder),
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://kbimages1-a.akamaihd.net/ddf8d53d-7df5-4560-8fbd-43915f4f6a03/353/569/90/False/rich-dad-poor-dad-24.jpg'),
                                      fit: BoxFit.fill),
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(8),
                                ),
                                height: getProportionateScreenHeight(200),
                                width: getProportionateScreenWidth(150),
                              ),
                              Row(
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    width: getProportionateScreenWidth(145),
                                    margin: EdgeInsets.symmetric(
                                      vertical: getProportionateScreenHeight(2),
                                      horizontal:
                                          getProportionateScreenWidth(9),
                                    ),
                                    child: Text(
                                      'Rich Dad Poor Dad',
                                      style: TextStyle(
                                        //fontWeight: FontWeight.w500,
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Column(
                children: [
                  Text(
                    'Catergories',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      catergoriescontainers(name: 'Adventure'),
                      catergoriescontainers(name: 'Sci-Fi'),
                      catergoriescontainers(name: 'Thiller'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      catergoriescontainers(name: 'Romances'),
                      catergoriescontainers(name: 'Fantacy'),
                      catergoriescontainers(name: 'Mystery')
                    ],
                  ),
                ],
              ),
            ),

            // Container(
            //   margin: EdgeInsets.only(
            //     top: getProportionateScreenHeight(10),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       CircleAvatar(
            //         child: Icon(
            //           Icons.upload_file,
            //           color: Colors.white,
            //         ),
            //         radius: getProportionateScreenWidth(20),
            //         backgroundColor: Colors.teal,
            //       ),
            //       CircleAvatar(
            //         child: Icon(
            //           Icons.create,
            //           color: Colors.white,
            //         ),
            //         radius: getProportionateScreenWidth(20),
            //         backgroundColor: Colors.teal,
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Paid Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1348956234i/13465.jpg',
                          bookname: 'Think Big',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            //////////////////////
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Adventure Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://kbimages1-a.akamaihd.net/9b641bf6-ae44-4c1e-aa2b-e57ca746eb82/353/569/90/False/the-richest-man-in-babylon-31.jpg',
                          bookname: 'The Richest Man in Babylon',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            ///////
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Sci-Fi Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://images-na.ssl-images-amazon.com/images/I/515ty5JeyqL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg',
                          bookname: 'Harry Potter',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            ////////
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Thiller Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://media1.popsugar-assets.com/files/thumbor/O1D4zTJlqLSW-WJ6E7xuivXaVdU/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2019/02/08/965/n/44701584/8e20afe55c5dfe2b107257.85617651_/i/Best-Thriller-Books-All-Time.jpg',
                          bookname: 'The Couple Next Door',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            /////////
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Romances Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://img.huffingtonpost.com/asset/5e4efc9c2300009a04ddcdfe.jpeg?ops=scalefit_720_noupscale',
                          bookname: 'No Rest For The Wicked ',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            ///////////////////
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Fantasy Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://ik.imagekit.io/panmac/tr:q-75,di-placeholder_portrait_aMjPtD9YZ.jpg,w-350,pr-true,bl/edition/9781529000634.jpg',
                          bookname: 'The Untold Story ',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                //left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      left: getProportionateScreenWidth(8),
                    ),
                    child: Center(
                      child: Text(
                        'Mystery Books',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(8),
                        right: getProportionateScreenWidth(7)),
                    child: Center(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          //color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: getProportionateScreenHeight(220),
              child: LayoutBuilder(
                  builder: (context, constraints) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => paidcontainers(
                          bookimage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSjS-7M6DUD6GviEu6Pz9-hxNbZQtsRc5BkA&usqp=CAU',
                          bookname: 'Lies You Never Told Me',
                        ),
                      )),
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(5),
              ),
            ),
            // Container(
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Icon(Icons.search)
            //     ],
            //   ),
            //   margin: EdgeInsets.only(top: 9, left: 30, right: 30),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: kSecondaryColor.withOpacity(0.2),
            //   ),
            //   width: 300,
            //   height: 40,
            // )
          ],
        ),
      ),
      drawer: Drawer(
        child: mydrawer(),
      ),
    );
  }
}

class paidcontainers extends StatelessWidget {
  const paidcontainers(
      {Key? key, required this.bookimage, required this.bookname})
      : super(key: key);
  final String bookimage;
  final String bookname;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            print('paid');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal),
              //   border: Border.all(color: yellowborder),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(bookimage.toString()), fit: BoxFit.fill),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(8),
            ),
            height: getProportionateScreenHeight(200),
            width: getProportionateScreenWidth(150),
          ),
        ),
        Row(
          children: [
            Container(
              // color: Colors.amber,
              width: getProportionateScreenWidth(145),
              margin: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(2),
                horizontal: getProportionateScreenWidth(9),
              ),
              child: Text(
                bookname.toString(),
                style: TextStyle(
                  //fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(17),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class catergoriescontainers extends StatelessWidget {
  const catergoriescontainers({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  //final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print('hello');
      }),
      child: Container(
        child: Center(
            child: Text(
          name.toString(),
          style: TextStyle(color: Colors.white),
        )),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
        ),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(90),
        margin: EdgeInsets.only(
          left: getProportionateScreenWidth(8),
          top: getProportionateScreenHeight(10),
        ),
      ),
    );
  }
}
