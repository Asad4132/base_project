import 'package:base_project/DbInfo.dart';
import 'package:base_project/myprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController username, password;
  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: username,
            decoration: InputDecoration(hintText: 'username'),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(hintText: 'password'),
          ),
          ElevatedButton(
            onPressed: () async {
              Provider.of<MyProvider>(context, listen: false).invertLoading();
              DbInfo response =
                  await Provider.of<MyProvider>(context, listen: false)
                      .getDB_Info();
              print(response.dbInfo);
              Provider.of<MyProvider>(context, listen: false).invertLoading();
            },
            child: Consumer<MyProvider>(builder: (context, provider, child) {
              return provider.loading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text('Login');
            }),
          ),
        ],
      ),
    );
  }
}
