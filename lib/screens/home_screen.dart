import 'package:bromindo_project/screens/login_screen.dart';
import 'package:bromindo_project/widgets/homepage/create_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bromindo'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Saras'),
              subtitle: Text('saras@gmail.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Bagas'),
              subtitle: Text('bagas@gmail.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                
                
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
