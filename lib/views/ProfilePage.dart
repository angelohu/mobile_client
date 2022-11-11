import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './user/Login.dart';
import '../controller/user/RegisterController.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFFFFFFFF),
        title: const Text(
          'Profilo',
          style: TextStyle(color: Color(0XFF1C2340)),
        ),
      ),
      body: Container(
        color: const Color(0XFFF9F9FF),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () => Get.to(Login()),
                child: Container(
                  color: const Color(0XFFFFFFFF),
                  height: 220,
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                          backgroundColor: Color(0XFFFFA200),
                          radius: 40,
                          child: Icon(
                            Icons.person,
                            color: Color(0XFFFFFFFF),
                          )),
                      const SizedBox(
                        height: 25.0,
                      ),
                      _registerController.isAuth
                          ? const Text('Accedi')
                          : Text(_registerController.userEmail)
                    ],
                  )),
                ),
              )),
          const Card(
            child: ListTile(
                leading: Icon(Icons.my_library_books),
                title: Text(
                  'I miei ordini',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right, color: Color(0XFFFFA200))),
          ),
          const Card(
            child: ListTile(
                leading: Icon(Icons.restaurant),
                title: Text(
                  'Il ristorante',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right, color: Color(0XFFFFA200))),
          ),
          const Card(
            child: ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text(
                  'Privacy e condizione d\' uso',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right, color: Color(0XFFFFA200))),
          ),
          const Card(
            child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'Esci',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right, color: Color(0XFFFFA200))),
          ),
        ]),
      ),
    );
  }
}
