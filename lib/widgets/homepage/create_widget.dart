import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data Employee'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter employees name',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Role:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter employees role',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Email:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter employees email',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Address:'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter employees address',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Data created successfully!'),
                  ),
                );
              },
              child: Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
