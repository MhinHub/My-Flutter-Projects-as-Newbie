import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/configs/palette.config.dart';
import 'package:todolist/modules/task/task_list/components/task_card.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  static const String path = '/task-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        backButton: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Palette.darkPrimary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Palette.darkPrimary,
            ),
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Database',
            style: TextStyle(
              fontSize: 24,
              color: Palette.primary,
            ),
          ),
          const Text(
            '12 Februari 2022',
            style: TextStyle(
              color: Palette.textPlaceholder,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(10, (index) {
              return Column(
                children: [
                  TaskCard(
                    description: 'description',
                    taskTitle: 'taskTitle',
                    dueDate: 'dueDate',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            }),
          )
        ],
        // children: List.generate(10, (index) {
        //   return TaskCard(
        //     description: 'description',
        //     taskTitle: 'taskTitle',
        //     dueDate: 'dueDate',
        //   );
        // }),
      ),
    );
  }
}
