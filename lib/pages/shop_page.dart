// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:projectmobile/dummy/catagorylist_json.dart';
import 'package:projectmobile/pages/product_detail_page.dart';
import 'package:animate_do/animate_do.dart';
import 'package:projectmobile/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      //bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Shop Me",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        icon: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              //color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.2))),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: Colors.black,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          getItemLists(),
          SizedBox(
            height: 40,
          ),
          //getSummary()
        ],
      ),
    );
  }

  Widget getItemLists() {
    var size = MediaQuery.of(context).size;
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: List.generate(shopJson.length, (index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProductDetailPage(
                              name: shopJson[index]['name'],
                              img: shopJson[index]['image'],
                              price: shopJson[index]['price'],
                              rate: shopJson[index]['rate'],
                              colors: shopJson[index]['colors'],
                            )));
              },
              child: FadeIn(
                duration: Duration(milliseconds: 1000 * index),
                child: Container(
                  width: (size.width - 50) / 2,
                  height: 220,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        child: Container(
                          width: (size.width - 50) / 2,
                          height: 200,
                          decoration: BoxDecoration(
                              color: secondary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 15, left: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: secondary,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      shopJson[index]['rate'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: secondary.withOpacity(0.15),
                                            blurRadius: 5,
                                            offset: Offset(0, 5))
                                      ]),
                                  child: Center(
                                    child: Icon(
                                      LineIcons.shoppingBag,
                                      size: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -5,
                        child: Container(
                            width: (size.width - 50) / 2,
                            height: 180,
                            decoration: BoxDecoration(
                                // color: Colors.red
                                ),
                            child: Image.asset(shopJson[index]['image'])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  width: (size.width - 60) / 2,
                  child: Text(
                    shopJson[index]['name'],
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: (size.width - 60) / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          "\$",
                          style: TextStyle(
                              fontSize: 13,
                              color: red,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        shopJson[index]['price'],
                        style: TextStyle(
                            fontSize: 20,
                            color: secondary.withOpacity(0.5),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        );
      }),
    );
  }
}
