import 'package:flutter/material.dart';
import 'package:toly_ui/view/widgets/display_nodes/display_nodes.dart';

@DisplayNode(
  title: '基础用法',
  desc: '通过 Flutter 内置的 TextField 组件展示输入框。',
)
class InputDemo1 extends StatelessWidget {
  const InputDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 32;
    TextStyle style = const TextStyle(fontSize: 14, height: 1);
    double width = 1;
    Color focusedColor = Colors.blue;
    Color unFocusedColor = const Color(0xffd9d9d9);
    OutlineInputBorder focusedBorder =
        OutlineInputBorder(borderSide: BorderSide(color: focusedColor, width: width));
    OutlineInputBorder border =
        OutlineInputBorder(borderSide: BorderSide(color: unFocusedColor, width: width));

    return SizedBox(
        width: 250,
        child: TextField(
          cursorHeight: style.fontSize,
          cursorWidth: 1,
          style: style,
          decoration: InputDecoration(
            hintText: 'please input',
            hintStyle: style.copyWith(color: unFocusedColor),
            isDense: true,
            focusedBorder: focusedBorder,
            enabledBorder: border,
            hoverColor: focusedColor,
            border: border,
          ),
        ));
  }
}
