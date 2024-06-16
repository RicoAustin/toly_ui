// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toly_ui/view/widgets/display_nodes/display_nodes.dart';

@DisplayNode(
  title: 'CallbackShortcuts 组件首先快捷键',
  desc: '基于 CallbackShortcuts 组件可以简便地使用快捷键。',
)
class CallbackShortcutsExample extends StatefulWidget {
  const CallbackShortcutsExample({super.key});

  @override
  State<CallbackShortcutsExample> createState() => _CallbackShortcutsExampleState();
}

class _CallbackShortcutsExampleState extends State<CallbackShortcutsExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: <ShortcutActivator, VoidCallback>{
        const SingleActivator(LogicalKeyboardKey.arrowUp): () {
          setState(() => count = count + 1);
        },
        const SingleActivator(LogicalKeyboardKey.arrowDown): () {
          setState(() => count = count - 1);
        },
        const SingleActivator(LogicalKeyboardKey.keyR, control: true): () {
          setState(() => count = 0);
        },
        LogicalKeySet(
            LogicalKeyboardKey.keyT, LogicalKeyboardKey.control, LogicalKeyboardKey.shift): () {
          setState(() => count = count + 10);
        },
      },
      child: Focus(
        autofocus: true,
        child: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Text('Ctrl+R 将数字只零'),
                // Text('Ctrl+Shift+T 数字+10'),
                Text('点击 ↑ 按钮增加数字'),
                Text('点击 ↓ 按钮减少数字'),
              ],
            ),
            Text(
              'count: $count',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
