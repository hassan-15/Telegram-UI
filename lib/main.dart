import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          //toolbarHeight: 120,
          backgroundColor: Color.fromRGBO(77, 123, 165, 1),
          centerTitle: false,
          title:
          Text(
            'Telegram',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            VerticalDivider(),
            Container(
              //decoration: BoxDecoration(
              //color: Colors.grey.withOpacity(0.3), shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),

            VerticalDivider(width: 5),

          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              // ...List.generate(
              //     20,
              //     (index) =>
              //     ListTile(
              //           leading: CircleAvatar(
              //             backgroundImage: AssetImage('assets/images/Hassan.jpg'),
              //             radius: 30,
              //           ),
              //           title: Text(
              //             'Hassan Ali ',
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 14,
              //             ),
              //           ),
              //           subtitle: Text(
              //             'Developer Career is the best! ',
              //             style: TextStyle(
              //               color: Colors.grey,
              //               fontSize: 14,
              //             ),
              //           ),
              //           trailing: Text(
              //             '12:00:PM',
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 14,
              //             ),
              //           ),
              //         )
              // )

              Container(
                height: MediaQuery.of(context).size.height ,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return
                      //   ListTile(
                      //   title: Text('$index sheep'),
                      // );

                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Hassan.jpg'),
                          radius: 30,
                        ),
                        title: Text(
                          'Hassan Ali ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          'Developer Career is the best! ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        trailing: Text(
                          '12:00:PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              )

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(77, 123, 165, 1),
          onPressed: () {},
          child: Icon(Icons.edit, color: Colors.white, size: 29,),
        ));
  }
}
