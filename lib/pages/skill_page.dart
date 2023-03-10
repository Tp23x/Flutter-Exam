import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f6f9),
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
        "Skill",
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
      backgroundColor: Color(0xffeef2f8),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          skillCompoo(),
          SizedBox(
            height: 20,
          ),
          //getPromoteCode(),
          SizedBox(
            height: 40,
          ),
          //getSummary()
        ],
      ),
    );
  }

  Widget skillCompoo() {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  //leading: FlutterLogo(),
                  title: Text(
                    'Web Development',
                    style: TextStyle(
                      color: Color(0xff032541),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/logoreact.png',
                  ),
                ),
                title: Text('ReactJS'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/nextlogo.png',
                  ),
                ),
                title: Text('NextJS'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/nodelogo.jpeg',
                  ),
                ),
                title: Text('NodeJS'),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  //leading: FlutterLogo(),
                  title: Text(
                    'Mobile Development',
                    style: TextStyle(
                      color: Color(0xff032541),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/logoreact.png',
                  ),
                ),
                title: Text('React - Native'),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  //leading: FlutterLogo(),
                  title: Text(
                    'Database',
                    style: TextStyle(
                      color: Color(0xff032541),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/mysqllogo.png',
                  ),
                ),
                title: Text('MySQL'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/mongodblogo.jpeg',
                  ),
                ),
                title: Text('MongoDB'),
              ),

              SizedBox(
                width: 10,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  //leading: FlutterLogo(),
                  title: Text(
                    'Tools & Utilities',
                    style: TextStyle(
                      color: Color(0xff032541),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/postmanlogo.png',
                  ),
                ),
                title: Text('Postman'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/gitlogo.png',
                  ),
                ),
                title: Text('Github'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/swaggerlogo.png',
                  ),
                ),
                title: Text('Swagger'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/jiralogo.png',
                  ),
                ),
                title: Text('Jira Software'),
              ),

              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
