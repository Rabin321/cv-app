import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueGrey),
      title: "My CV App",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("CV App"),
        ),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.grey,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(top: 30, bottom: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/img.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Rabin Shrestha",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      "robeanshrestha123@gmail.com",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text(
                "Contact",
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {},
            ),
          ],
        )),
        body: SingleChildScrollView(
          //SingleChildScrollView ley app lai scroll garna milne banauxa. yo rakhena vani screen size vanda dherai text or image or icon...etc vayo vani error,warning awxa.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical:
                        35.1, // vertical ley Card ko tala ra mathi padding dinxa.
                    horizontal:
                        20.1, // horizontal ley card ko left ra right ma padding dinxa.
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                            "assets/rabin.jpg"), //AssetImage garyo vani chai assets naam ko folder banayera image rakhnu parxax.
                        // backgroundimage:Image.assets garyo vani chai folder ko naam j diye pan9i hunxax.
                        //  Colors.green, // circle image rakhna ko lagi.
                      ),
                      SizedBox(
                        // yesley empty box banauxa ra tya hamle height width haru dina mkilxa.
                        height: 15.0,
                      ),
                      Text(
                        "Rabin Shrestha",
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "BSc.CSIT Student",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Hello! I am Rabin Shrestha  from Bhaktapur. I am a BSc.CSIT student currently studying in 3rd Semester.",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Fondamento",
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, top: 8.0, bottom: 5.0),
                child: Text(
                  "Social Links",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          launch(
                              "https://www.facebook.com/robean.shrestha.1?ref=bookmarks");
                        },
                        icon: Icon(FontAwesomeIcons.facebook),
                        color: Colors.blue,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        onPressed: () {
                          launch("https://www.instagram.com/robin_10shrestha/");
                        },
                        color: Colors.red,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          launch(
                              "https://www.linkedin.com/in/rabin-shrestha-067a29166/");
                        },
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, top: 8.0, bottom: 5.0),
                child: Text(
                  "Skills",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  title: Text(
                    "Web Development",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("HTML, CSS, Javascript"),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRnGyWDlXCj_DF9kL4rlvp2t7wj-J8WFimNmA&usqp=CAU"), // network image ley url linxa .kunai online image rakhna use hunxa.
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  title: Text(
                    "App Development",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Dart, Flutter"),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT3eh6sZ5aQgl85D0IMI9rdftOE9vJo75fI3w&usqp=CAU"), // network image ley url linxa .kunai online image rakhna use hunxa.
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  title: Text(
                    "Programming Languages",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("C, C++, Python, PHP, Dart"),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://online.csp.edu/wp-content/uploads/2019/02/Programming-Languages-for-Beginners-CSP.png"), // network image ley url linxa .kunai online image rakhna use hunxa.
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, top: 8.0, bottom: 5.0),
                child: Text(
                  "Academic Qualification",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  title: Text(
                    "+2",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Khwopa Colege"),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://media.edusanjal.com/gallery/khwopa_3.jpg"), // network image ley url linxa .kunai online image rakhna use hunxa.
                  ),
                ),
              ),
              Card(
                elevation: 3.0,
                child: ListTile(
                  title: Text(
                    "Bachelor",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Ambition Colege"),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://kaha6.com/wp-content/uploads/cache/images/remote/i1-wp-com/Ambition-College-3081157635.jpg"), // network image ley url linxa .kunai online image rakhna use hunxa.
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
