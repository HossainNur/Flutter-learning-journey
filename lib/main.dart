import 'package:flutter/material.dart';

main(){
  runApp(const MyApp()); // Application
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.indigo),
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
        ],
        onTap: (int index){
          if(index== 0){
            MySnackBar("home", context);
          }
          if(index== 1){
            MySnackBar("contact", context);
          }
          if(index== 2){
            MySnackBar("email", context);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(elevation: 10, child: Icon(Icons.add), onPressed: (){MySnackBar("Floating Action Button", context);}),
      appBar: AppBar(
        title: Text("Nur"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 90,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Nur Hossain")),
            ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){
              MySnackBar("home", context);
            },),
            ListTile(leading:Icon(Icons.contact_emergency),title: Text("Contact")),
            ListTile(leading:Icon(Icons.email),title: Text("Email"))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Nur Hossain")),
            ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){
              MySnackBar("home", context);
            },),
            ListTile(leading:Icon(Icons.contact_emergency),title: Text("Contact")),
            ListTile(leading:Icon(Icons.email),title: Text("Email"))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }

}

