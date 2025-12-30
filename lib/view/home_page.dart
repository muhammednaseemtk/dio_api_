import 'package:api_project/model/user_model.dart';
import 'package:api_project/service/user_service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = UserServise();

    return Scaffold(
      body: FutureBuilder<List<UserModel>>(
        future: service.fetchdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No cat facts found.'));
          }

          final list = snapshot.data!;

          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(list[index].name),
                title: Text(list[index].age.toString()),
                
              );
            },
          );
        },
      ),
    );
  }
}