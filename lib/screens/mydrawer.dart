import 'package:ebook/constants.dart';
import 'package:ebook/screens/createdoc.dart';
import 'package:ebook/screens/mainhomepage.dart';
import 'package:ebook/size_config.dart';
import 'package:flutter/material.dart';
import 'package:wallet_connect/wallet_connect.dart';

import '../Push_notification/notification.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(children: [
      // Container(
      //   margin: EdgeInsets.only(
      //     top: getProportionateScreenHeight(8),
      //     //bottom: getProportionateScreenHeight(30)
      //     //vertical: getProportionateScreenHeight(70),
      //   ),
      //   child: Row(
      //     children: [
      //       Text(
      //         'Edit Profile',
      //         style: TextStyle(
      //           //fontWeight: FontWeight.w500,
      //           fontSize: getProportionateScreenWidth(20),
      //         ),
      //       ),
      //       Expanded(
      //         child: Icon(
      //           Icons.border_color,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      //   //decoration: ,
      //   // width: getProportionateScreenWidth(15),
      //   height: getProportionateScreenHeight(20),
      //   color: Colors.red,
      // ),

      //https://logosarchive.com/wp-content/uploads/2022/02/WalletConnect-icon.png
      Container(
        margin: EdgeInsets.only(
            top: getProportionateScreenHeight(80),
            bottom: getProportionateScreenHeight(30)
            //vertical: getProportionateScreenHeight(70),
            ),
        height: getProportionateScreenHeight(120),
        //width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          //  borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3GPI5929Cmg2WNKAXDcdtqXb6qhTZSRC42g&usqp=CAU'),
              fit: BoxFit.fitHeight),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: getProportionateScreenHeight(70),
          bottom: getProportionateScreenHeight(30),
          right: getProportionateScreenHeight(70),
          //vertical: getProportionateScreenHeight(70),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                print('hello my hope');
              },
              child: Icon(
                Icons.border_color,
                color: Colors.teal,
                size: getProportionateScreenWidth(20),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(
              'Judith Ralph betta',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
          ],
        ),
      ),
      Container(
        //color: Colors.blue,
        margin: EdgeInsets.only(
            top: getProportionateScreenHeight(10),
            bottom: getProportionateScreenHeight(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.upload_file,
                    color: Colors.white,
                  ),
                  radius: getProportionateScreenWidth(25),
                  backgroundColor: Colors.teal,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(5),
                  ),
                  child: Text(
                    'Upload ',
                    style: TextStyle(
                      // fontWeight: FontWeight.w500,
                      fontSize: getProportionateScreenWidth(17),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => NotificationApi.showNotification(
                  id: 0,
                  title: 'G_II_W',
                  body: 'This is proudly sponsored by ghost in wires',
                  payload: 'Fregiess'),
              child: Container(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  //  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://logosarchive.com/wp-content/uploads/2022/02/WalletConnect-icon.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => createdoc()),
                    );
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.create,
                      color: Colors.white,
                    ),
                    radius: getProportionateScreenWidth(25),
                    backgroundColor: Colors.teal,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(5),
                  ),
                  child: Text(
                    'Create',
                    style: TextStyle(
                      // fontWeight: FontWeight.w500,
                      fontSize: getProportionateScreenWidth(17),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: getProportionateScreenHeight(10),
          bottom: getProportionateScreenHeight(3),
          //right: getProportionateScreenHeight(70),
          //vertical: getProportionateScreenHeight(70),
        ),
        child: Text(
          'Recent Upload',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: getProportionateScreenWidth(17),
          ),
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
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkEpq1Irwtr0I80Pxs_r3JXFRLBHpEPj44lg&usqp=CAU',
                    bookname: '',
                  ),
                )),
        margin: EdgeInsets.only(
          top: getProportionateScreenHeight(5),
        ),
      ),

      // Container(
      //   child: LayoutBuilder(
      //       builder: (context, constraints) => ListView.builder(
      //             scrollDirection: Axis.horizontal,
      //             itemCount: 5,
      //             itemBuilder: (context, index) => paidcontainers(
      //               bookimage:
      //                   'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1348956234i/13465.jpg',
      //               bookname: 'Think Big',
      //             ),
      //           )),
      //   decoration: BoxDecoration(
      //       color: kSecondaryColor.withOpacity(0.2),
      //       borderRadius: BorderRadius.circular(10)),
      //   margin: EdgeInsets.only(
      //     left: getProportionateScreenHeight(90),
      //     bottom: getProportionateScreenHeight(30),
      //     right: getProportionateScreenHeight(90),
      //     //vertical: getProportionateScreenHeight(70),
      //   ),
      //   //decoration: ,
      //   // width: getProportionateScreenWidth(15),
      //   height: getProportionateScreenHeight(150),
      // ),
      /////
      Container(
        margin: EdgeInsets.only(
          left: getProportionateScreenHeight(70),
          bottom: getProportionateScreenHeight(30),
          right: getProportionateScreenHeight(70),
          //vertical: getProportionateScreenHeight(70),
        ),
        child: Center(
          child: Text(
            'Log Out',
            style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.w500,
              fontSize: getProportionateScreenWidth(17),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(50),
        ),
        // width: getProportionateScreenWidth(15),
        height: getProportionateScreenHeight(50),
      )
      // Container(
      //   //decoration: ,
      //   // width: getProportionateScreenWidth(15),
      //   height: getProportionateScreenHeight(20),
      //   color: Colors.red,
      // )
    ]);
  }
}
