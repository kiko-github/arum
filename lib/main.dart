import 'package:arum/KakaoLoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'http://210.114.18.63/',
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (NavigationRequest request) {
            if(request.url.startsWith('https://accounts.kakao.com/')){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KakaoLoginScreen(todo: request.url)),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          // javascriptMode: JavascriptMode.disabled,
        ),
      ),
    );
  }
}
