import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

late WebViewController _webViewController;

class WebViewPage extends StatelessWidget {
  final String initialUrl;

  WebViewPage(this.initialUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
      ),
      body: WebView(
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
