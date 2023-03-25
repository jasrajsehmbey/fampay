import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? uid;

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    uid = FirebaseAuth.instance.currentUser!.uid;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', uid!);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text(
            uid!,
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
