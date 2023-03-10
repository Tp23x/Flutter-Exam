import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectmobile/components/education.dart';
import 'package:projectmobile/components/hilghlight.dart';
import 'package:projectmobile/components/skill.dart';
import 'package:projectmobile/theme/colors.dart';
import 'package:projectmobile/widgets/custom_slider.dart';
import 'package:projectmobile/dummy/ads_json.dart';
import 'package:projectmobile/pages/side_menu_page.dart';

List categoryItems = [
  {"title": "Highlights"},
  {"title": "Education"},
  {"title": "Skill"},
  {"title": "Address"}
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenuPage(),
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(
          Icons.menu_open,
          color: Colors.black,
        ),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/images/mememe.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "Hello Everyone,",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Text(
            "Pawarin Mai-on",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomSlider(
            items: adsJson,
          ),
          SizedBox(
            height: 20,
          ),
          getCategorySection(),
          SizedBox(
            height: 30,
          ),
          pageIndex == 0 ? hilghlightCompo() : educationCompo(),
          SizedBox(
            height: 20,
          ),
          //Text('Testtt'),
          // hilghlightCompo(),
          // educationCompo()
        ],
      ),
    );
  }

  Widget getCategorySection() {
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: (size.width - 30) * 0.7,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categoryItems.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = index;
                          });
                        },
                        child: Container(
                          height: 30,
                          decoration: pageIndex == index
                              ? BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: secondary, width: 1.5)))
                              : BoxDecoration(),
                          child: Text(categoryItems[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: pageIndex == index
                                      ? secondary
                                      : secondary.withOpacity(0.5))),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    color: secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Search...",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
