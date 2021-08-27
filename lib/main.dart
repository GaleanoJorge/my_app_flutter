import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso del AppBar'),
        ),
        body: SizedBox(
          // width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text('q pasa'),
              Image.network(
                'https://giffiles.alphacoders.com/132/13214.gif',
                height: 80,
              ),
              Image.network(
                'https://c.tenor.com/TvxUjFq26-oAAAAd/anime-hunter-x-hunter.gif',
                height: 80,
              ),
              Image.network(
                'https://qph.fs.quoracdn.net/main-qimg-ed282280634ab4deb0a403aae9b98b95',
                height: 80,
              ),
              Image.network(
                'https://thumbs.gfycat.com/EcstaticThoseBarbet-max-1mb.gif',
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _add() {
    print('Holanda');
  }
}
