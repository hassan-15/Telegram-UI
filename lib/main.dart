import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
bool isSwitched = false;
var textValue = 'Switch is OFF';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram UI',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: isSwitched ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}



class _MyHomePageState extends State<MyHomePage> {

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print(isSwitched);
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print(isSwitched);
    }
    runApp(MyApp());
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               DrawerHeader(
                decoration: BoxDecoration(
                  color: isSwitched ? Color.fromRGBO(0, 0, 0, 1) : Color.fromRGBO(77, 123, 165, 1) ,
                ),
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Hassan.jpg'),
                 radius: 40,
               ),
                             Text(isSwitched ? 'Dark Mode' : 'Light Mode'),
                             Switch(
                               onChanged: toggleSwitch,
                               value: isSwitched,
                               activeColor: Colors.white,
                               activeTrackColor: Colors.grey,
                               inactiveThumbColor: Colors.black,
                               inactiveTrackColor: Colors.grey,
                             )
                           ],
                         ),
                        Text( 'Hassan Ali',style: TextStyle(color: Colors.white,fontSize: 18, height: 2.0,)),
                        Text('sonysoliman5@gmail.com',style: TextStyle(color: Colors.white,fontSize: 11, height:1,)),
                      ],
                    )

              ),
              ListTile(
                leading: Icon(Icons.group),
                title: const Text('New Group'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: const Text('New Secret Chat'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: const Text('New Channel'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contacts_rounded),
                title: const Text('Contacts'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark_border),
                title: const Text('Saved Messages'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.call_sharp),
                title: const Text('Calls'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: const Text('Invite Friends'),
                onTap: () {},
              ),

              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {}
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: const Text('Telegram FAQ'),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white54,
        appBar: AppBar(
          //toolbarHeight: 120,
          backgroundColor: isSwitched ? Color.fromRGBO(0, 0, 0, 1) : Color.fromRGBO(77, 123, 165, 1),
          centerTitle: false,
          title:
          Text(
            'Telegram',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: "Roboto",fontWeight: FontWeight.w300)
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

        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                height: MediaQuery.of(context).size.height ,
                width: double.infinity,
                color: isSwitched ? Color.fromRGBO(0, 0, 0, 1) : Color.fromRGBO(255, 255, 255, 1),
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
                            color: isSwitched ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          'I\'m glad you see my project! ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        trailing: Text(
                          '12:00:AM',
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
          backgroundColor: Color.fromRGBO(77, 123, 165, 1,),
          onPressed: () {},
          child: Icon(Icons.edit, color: isSwitched ? Colors.black : Colors.white, size: 29,),
        ));
  }



}
