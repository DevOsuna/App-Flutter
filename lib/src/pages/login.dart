import 'package:componentes/src/pages/list_users.dart';
import 'package:flutter/material.dart';

// My imports

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _createInputUser(),
              SizedBox(
                height: 35,
              ),
              _createInpuPassword(),
              SizedBox(
                height: 50,
              ),
              _createButtonLogin(context),
            ],
          ),
        ),
        floatingActionButton: _createButton(context),
      ),
    );
  }

  Widget _createButton(context) {
    return Row(
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  Widget _createInputUser() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'User name',
        labelText: 'User name',
        suffixIcon: Icon(Icons.account_circle_sharp),
      ),
    );
  }

  Widget _createInpuPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: 'Password',
        hintText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
      ),
    );
  }

  Widget _createButtonLogin(context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListUsers()),
        );
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text("Let's go", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
