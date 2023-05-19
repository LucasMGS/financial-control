import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/shared/extensions/context_extension.dart';
import 'package:monetine/src/modules/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height * 2,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  // color: Colors.white,
                  height: context.percentHeight(.25),
                ),
              ),
              Positioned(
                top: context.percentHeight(.18),
                left: context.percentWidth(.36),
                right: context.percentWidth(.36),
                // height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 100,
                  width: 40,
                ),
              ),
              Positioned(
                top: context.percentHeight(.34),
                left: context.percentWidth(.05),
                right: context.percentWidth(.05),
                child: Column(
                  children: [
                    Text(
                      'Lucas Moreira',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Definir limite'),
                        ),
                      ],
                    ),
                    SizedBox(
                      // height: context.percentHeight(.5),
                      width: context.width,
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Opções',
                                style: context.textTheme.titleSmall,
                              ),
                              const Divider(),
                              Obx(() {
                                return ListTile(
                                  title: const Text('Tema'),
                                  trailing: Switch.adaptive(
                                    thumbIcon:
                                        MaterialStateProperty.resolveWith(
                                            (states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return const Icon(
                                          Icons.nightlight_round_outlined,
                                          color: Colors.white,
                                        );
                                      } else {
                                        return const Icon(
                                          Icons.sunny,
                                          color: Colors.yellow,
                                        );
                                      }
                                    }),
                                    value: controller.isDarkMode.value,
                                    onChanged: controller.setTheme,
                                  ),
                                );
                              }),
                              const ListTile(
                                title: Text('País'),
                                trailing: Text('BR'),
                              ),
                              const ListTile(
                                title: Text('Idioma'),
                                trailing: Text('PT'),
                              ),
                              const ListTile(
                                title: Text('Moeda'),
                                trailing: Text('BRL'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Alertas e notificações',
                              style: context.textTheme.titleSmall,
                            ),
                            const Divider(),
                            Obx(() {
                              return ListTile(
                                title: const Text('Alertas'),
                                trailing: Switch.adaptive(
                                  value: controller.isDarkMode.value,
                                  onChanged: controller.setTheme,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Segurança',
                              style: context.textTheme.titleSmall,
                            ),
                            const Divider(),
                            Obx(() {
                              return ListTile(
                                title: Text(
                                  'Solicitar FaceID ou senha para acessar o app',
                                  style: context.textTheme.titleMedium,
                                ),
                                trailing: Switch.adaptive(
                                  value: controller.isDarkMode.value,
                                  onChanged: controller.setTheme,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Outras Opções',
                              style: context.textTheme.titleSmall,
                            ),
                            const Divider(),
                            const ListTile(
                              title: Text('Política de privacidade'),
                            ),
                            const ListTile(
                              title: Text('Termos de uso'),
                            ),
                            const ListTile(
                              title: Text('Gerenciar assinaturas'),
                            ),
                            const ListTile(
                              title: Text(
                                'Excluir conta',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
