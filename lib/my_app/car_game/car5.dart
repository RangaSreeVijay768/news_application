import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:html2md/html2md.dart' as html2md;


void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GameScreen(),
      ),
    );
  }
}

class GameScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            var html = '''<h1>HTML2MD Demo</h1>


<h2>Usage</h2>

<pre><code class="language-dart">import 'package:html2md/html2md.dart' as html2md;
void main() {
  print(html2md.convert('&lt;h1&gt;Hello world&lt;/h1&gt;'));
}</code></pre>

<hr />


<ul>
  <li>headingStyle (setext or atx)</li>
  <li>horizontalRule (*, -, or _)</li>
  <li>bullet (*, -, or +)</li>
  <li>codeBlockStyle (indented or fenced)</li>
  <li>fence (` or ~)</li>
  <li>emDelimiter (_ or *)</li>
  <li>strongDelimiter (** or __)</li>
  <li>linkStyle (inlined or referenced)</li>
  <li>linkReferenceStyle (full, collapsed, or shortcut)</li>
</ul>''';
            print(html2md.convert(html));
          },
          child: Text("html"),
        ),
      ),
    );
  }

}
