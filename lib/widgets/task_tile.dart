import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function checkboxcallback;
  final Function onlongpressed;
  TaskTile({this.isChecked, this.tasktitle, this.checkboxcallback,this.onlongpressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongpressed,
      
      title: Text(
      
        tasktitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
