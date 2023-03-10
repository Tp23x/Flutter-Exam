import 'package:animate_do/animate_do.dart';
import 'package:projectmobile/dummy/side_menu_json.dart';
import 'package:projectmobile/pages/home_page.dart';
import 'package:flutter/material.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({Key? key}) : super(key: key);

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [getHeader(), getBodyItems(), getFooter()],
      ),
    );
  }

  Widget getHeader() {
    return SizedBox(
      height: 160,
      child: DrawerHeader(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            width: 45,
            height: 45,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/mememe.png'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ), //secondary
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "I'm",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          Text("Pawarin Mai-on",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
        ],
      )),
    );
  }

  Widget getBodyItems() {
    return Column(
      children: List.generate(sideMenuItems.length, (index) {
        if (sideMenuItems[index]['selected']) {
          return FadeInLeft(
            duration: Duration(milliseconds: 200),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border:
                        Border.all(color: Color(0xff464545).withOpacity(0.05)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff464545).withOpacity(0.03),
                          blurRadius: 2.5,
                          offset: Offset(0, 5))
                    ]),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => sideMenuItems[index]['page']));
                  },
                  minLeadingWidth: 10,
                  leading: Icon(
                    sideMenuItems[index]['icon'],
                    color: Color(0xff464545),
                  ),
                  title: Text(
                    sideMenuItems[index]['label'],
                    style: TextStyle(fontSize: 16, color: Color(0xff464545)),
                  ),
                ),
              ),
            ),
          );
        }
        return FadeInLeft(
          duration: Duration(milliseconds: index * 200),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: ListTile(
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => sideMenuItems[index]['page']));
              },
              minLeadingWidth: 20,
              leading: Icon(
                sideMenuItems[index]['icon'],
                color: Color(0xff464545).withOpacity(0.8),
                size: 26,
              ),
              title: Text(
                sideMenuItems[index]['label'],
                style: TextStyle(
                    fontSize: 16, color: Color(0xff464545).withOpacity(0.8)),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getFooter() {
    return Column(
      children: [
        Divider(),
        FadeInLeft(
          duration: Duration(milliseconds: 800),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: ListTile(
              onTap: () {},
              minLeadingWidth: 20,
              leading: Icon(
                //LineIcons.alternateSignOut,
                Icons.logout_outlined,
                color: Color(0xff464545).withOpacity(0.8),
                size: 28,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 16, color: Color(0xff464545).withOpacity(0.8)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
