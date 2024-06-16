import 'package:flutter/material.dart';
import 'package:toly_ui/view/widgets/display_nodes/display_nodes.dart';

@DisplayNode(
  title: '图片重复模式',
  desc: 'repeat 属性设置图片重复模式，有 ImageRepeat 枚举定义四种元素：',
)
class RepeatImage extends StatelessWidget {
  const RepeatImage({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage image = AssetImage("assets/images/wy_30x20.webp");

    return Wrap(
      children: ImageRepeat.values
          .toList()
          .map((mode) => Column(children: [
                Container(
                    margin: const EdgeInsets.all(5),
                    width: 150,
                    height: 60,
                    color: Colors.red,
                    child: Image(image: image, repeat: mode)),
                Text(mode.toString().split(".")[1])
              ]))
          .toList(),
    );
  }
}
