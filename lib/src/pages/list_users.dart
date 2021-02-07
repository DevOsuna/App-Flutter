import 'package:flutter/material.dart';

import 'info_user.dart';

class ListUsers extends StatelessWidget {
  final users = [
    'Cesar Osuna Morales',
    'Ruiz Guzman María Fernanda',
    'Erik de Jesus Toala Gutierrez',
    'Jorge Alejandro Altuzar Guillens',
    'Cesar Osuna Morales',
    'Ruiz Guzman María Fernanda',
    'Erik de Jesus Toala Gutierrez',
    'Cesar Osuna Morales',
    'Jorge Alejandro Altuzar Guillens',
    'Cesar Osuna Morales',
    'Ruiz Guzman María Fernanda',
    'Erik de Jesus Toala Gutierrez',
    'Jorge Alejandro Altuzar Guillens',
    'Jorge Alejandro Altuzar Guillens',
    'Cesar Osuna Morales',
    'Ruiz Guzman María Fernanda',
    'Erik de Jesus Toala Gutierrez',
    'Jorge Alejandro Altuzar Guillens',
    'Jorge Alejandro Altuzar Guillens',
    'Cesar Osuna Morales',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users List'),
        centerTitle: true,
      ),
      body: ListView(
        children: _creatItem(context),
      ),
    );
  }

  List<Widget> _creatItem(context) {
    return users.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoUser(name: item)),
              );
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
