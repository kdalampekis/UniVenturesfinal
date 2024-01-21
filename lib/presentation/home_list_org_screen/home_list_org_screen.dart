import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class DebugScreen extends StatelessWidget {
  final storage = new FlutterSecureStorage();

  Future<Map<String, dynamic>> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    final data = <String, dynamic>{};

    for (String key in keys) {
      data[key] = prefs.get(key);
    }

    // Assuming you are storing email and password in secure storage
    data['secure_email'] = await storage.read(key: 'email');
    data['secure_password'] = await storage.read(key: 'password');

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Debug Data')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            return ListView(
              children: snapshot.data!.entries.map((entry) {
                return ListTile(
                  title: Text(entry.key),
                  subtitle: Text(entry.value.toString()),
                );
              }).toList(),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
