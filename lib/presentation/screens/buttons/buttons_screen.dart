import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Screen")),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Elevated Button")),
            ElevatedButton(onPressed: null, child: const Text("Elevated Disabled")),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon( Icons.access_alarm_rounded), label: const Text("Elevated Icon"),),
            FilledButton(onPressed: (){}, child: Text("Filled")),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.accessibility_new), label: const Text("Filled Icon")),
            OutlinedButton(onPressed: (){}, child: Text("Outlined")),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.terminal), label: const Text("Outlined Icon"),),
            TextButton(onPressed: (){}, child: Text("Text")),
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.account_box_outlined), label: const Text("Text Icon"),),

            const CustomButton(),

            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(colors.primary), iconColor: WidgetStatePropertyAll(Colors.white)),),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola mundo", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
