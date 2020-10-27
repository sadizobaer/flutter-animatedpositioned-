import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  double screenheight, screenwidth;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://images.unsplash.com/photo-1559548331-f9cb98001426?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "David Miller",
                      style: GoogleFonts.lato(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "david.d2d@gmail.com",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Privacy",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Share",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(
                seconds: 1,
              ),
              top: value==false? 0:70,
              bottom: value==false? 0:70,
              left:value==false? 0: 200,
              right:value==false? 0: -150,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  value = !value;
                                });
                              }),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),

                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://images.unsplash.com/photo-1559548331-f9cb98001426?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:0),
                      child: Text(
                        "David Miller",
                        style: GoogleFonts.lato(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      thickness: 3.0,
                      color: Colors.blueGrey[200],
                    ),
                    SizedBox(height: 20,),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.blueGrey[300],
                        ),
                        title: Text(
                          '+886-521-309-995',
                          style: GoogleFonts.lato(
                              color: Colors.blueGrey[300],
                              fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.blueGrey[300],
                        ),
                        title: Text(
                          'david.d2d@gmail.com',
                          style: GoogleFonts.lato(
                              color: Colors.blueGrey[300],
                              fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
