import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _textContoller = TextEditingController();

  String userLink = '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('QR Code Generator'),
        titleTextStyle: TextStyle(
          fontSize: 30.0,
          fontFamily: 'ArefRuqaaInk',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.all(20.0),
            child: Text(
              'Type in the Link For QR Code',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.purple,
                fontFamily: 'ArefRuqaaInk',
              ),
            ),
          ),
          Center(
            child: QrImage(
              data: _textContoller.text,
              size: 300.0,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textContoller,
              decoration: InputDecoration(
                hintText: 'Give me the link...',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: (){
                      _textContoller.clear();
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: (){
              setState(() {
                userLink = _textContoller.text;
              });
            },
            label: Text('Click Me',
              style: TextStyle(
                fontSize: 20,
              ),),
            icon: Icon(Icons.qr_code),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (()=>{
        Navigator.pushNamed(context, '/inc_page')
      }),
        child: Icon(
        Icons.arrow_forward,
    ),
      ),
    );
  }
}
