import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final bool ischecked;
  final String TaskTitle;
  final void Function(bool?) Checkboxchange;
  final void Function() listtitledelete;

  ListTitle({
    required this.ischecked,
    required this.TaskTitle,
    required this.Checkboxchange,
    required this.listtitledelete,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        TaskTitle,
        style: TextStyle(
            // fontWeight: FontWeight.bold,
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: ischecked,
        //onChanged: null,
        onChanged: Checkboxchange,
      ),
      onLongPress: listtitledelete,
    );
  }
}
/*

*/

// class TaskCheckbox extends StatelessWidget {
//   final bool chekboxstate;
//   final Function(bool?) checkboxchenge;

//   TaskCheckbox(this.chekboxstate, this.checkboxchenge);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
