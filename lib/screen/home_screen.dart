import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeurl = 'https://blog.codefactory.ai';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('CodeFactory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if(controller == null) return;
              controller!.loadUrl(homeurl);
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        initialUrl: homeurl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
