import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:testproject/models/models.dart';

class TaskLIst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              tasktitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxcallback: (checkboxstate) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onlongpressed: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}
