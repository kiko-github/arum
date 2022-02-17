import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KakaoLoginScreen extends StatefulWidget {
  final String todo;

  const KakaoLoginScreen({Key? key, required this.todo}) : super(key: key);

  @override
  createState() => _KakaoLoginScreenState();

}

class _KakaoLoginScreenState extends State<KakaoLoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.navigate_before, color: Color.fromRGBO(0, 0, 0, 0.7), size: 40,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: widget.todo,
          javascriptMode: JavascriptMode.unrestricted,
          // javascriptMode: JavascriptMode.disabled,
        ),
      ),
    );
  }
}