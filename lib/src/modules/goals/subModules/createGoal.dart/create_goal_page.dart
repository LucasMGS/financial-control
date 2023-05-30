import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:monetine/src/modules/goals/subModules/createGoal.dart/create_goal_controller.dart';

class CreateGoalPage extends GetView<CreateGoalController> {
  const CreateGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Valor',
                  labelText: 'Valor',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Título',
                  hintText: 'Casamento',
                ),
                keyboardType: TextInputType.text,
              ),
              ElevatedButton(
                child: const Text('Escolher imagem'),
                onPressed: () async {
                  final file = await controller.imagePicker
                      .pickImage(source: ImageSource.gallery);
                  if (file != null) {
                    controller.goalImage = file;
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          color: context.theme.colorScheme.primaryContainer,
          height: 50,
          alignment: Alignment.center,
          child: Text(
            'Criar novo objetivo',
            textAlign: TextAlign.center,
            style: context.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
