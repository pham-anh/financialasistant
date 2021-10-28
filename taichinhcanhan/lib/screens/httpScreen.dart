import 'package:flutter/material.dart';
import '../data/http_helper.dart';

class HttpScreen extends StatefulWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  _HttpScreenState createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: getData, child: Text('Get Data')),
          Text(result),
        ],
      ),
    );
  }

  Future getData() async {
    HttpHelper helper = HttpHelper();
    result = await helper.getExpenses();
    setState(() {});
  }
}
