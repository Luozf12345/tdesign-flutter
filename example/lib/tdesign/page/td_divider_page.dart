import 'package:flutter/material.dart';
import 'package:tdesign_flutter/td_export.dart';

import '../example_widget.dart';

class TDDividerPage extends StatelessWidget {
  const TDDividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
        title: '分割线 Divider',
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        children: [
      ExampleModule(desc: '直线拉通', builder: (_){
        return const TDDivider();
      }),
      ExampleModule(desc: '虚线拉通', builder: (_){
        return const TDDivider(isDashed: true,);
      }),
          ExampleModule(desc: '左右间距', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 16, right: 16),);
          }),
          ExampleModule(desc: '左侧拉通', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 16, ),);
          }),
          ExampleModule(desc: '自定义左侧间距', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 76, ),);
          }),
          ExampleModule(desc: '左右间距(虚线)', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 16, right: 16),isDashed: true,);
          }),
          ExampleModule(desc: '自定义左侧间距(虚线)', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 76, ),isDashed: true,);
          }),
          ExampleModule(desc: '垂直分割', builder: (_){
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TDText('文字信息', textColor: TDTheme.of(context).fontGyColor3,),
                const TDDivider(width: 0.5, height: 12, margin: EdgeInsets.only(left: 8, right: 8),),
                TDText('文字信息', textColor: TDTheme.of(context).fontGyColor3),
                const TDDivider(width: 0.5, height: 12, margin: EdgeInsets.only(left: 8, right: 8),isDashed: true, direction: Axis.vertical,),
                TDText('文字信息', textColor: TDTheme.of(context).fontGyColor3),
              ],
            );
          }),
          ExampleModule(desc: '文字+直线', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 16, right: 16), text: '文字信息',);
          }),
          ExampleModule(desc: '文字+虚线', builder: (_){
            return const TDDivider(margin: EdgeInsets.only(left: 16, right: 16), text: '文字信息',isDashed: true,);
          }),
          ExampleModule(desc: '纯文字', builder: (_){
            return const TDDivider(hideLine: true, text: '文字信息',);
          }),
    ]);
  }
}


