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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            //VerticalDivider(),
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
                          'Moaaz is the best! ',
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
