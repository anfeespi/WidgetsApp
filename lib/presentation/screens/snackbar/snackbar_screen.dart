import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text("Hola mundo"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
  
  void openDialog(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Text("¿Estás seguro?"),
          content: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mollis a elit et semper. Aliquam diam magna, pellentesque at urna finibus, tempus consequat nisi. Phasellus consectetur pellentesque nisl ac tempus. Integer maximus lacus eget ante facilisis volutpat. Proin eleifend nibh eros, et tincidunt ante vulputate et. Morbi ultrices pharetra arcu et interdum. In est ligula, maximus vitae venenatis in, mattis in leo. Aliquam egestas, nulla vitae viverra lobortis, dui lacus aliquet sapien, in ullamcorper nibh purus in orci. Aenean vitae semper velit. Etiam finibus molestie neque, id dictum dolor viverra a. Nullam ligula orci, tempus eget felis eget, ultricies luctus turpis. Ut luctus vestibulum porttitor. Quisque congue lobortis ipsum, et sodales ante eleifend at. Quisque aliquet, sem vel fermentum iaculis, enim enim bibendum lectus, eu imperdiet augue diam nec ligula. Etiam malesuada risus quam. Aliquam vestibulum, magna sed gravida fermentum, ipsum neque auctor sem, at condimentum tellus purus at massa. "),
            actions: [
              TextButton(onPressed: () => context.pop(), child: Text("Cancelar")),
              FilledButton(onPressed: () => context.pop(), child: Text("Aceptar")),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbars y Diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      children: [
                        Text("Lorem ipsum etc etc etc")
                      ]
                  );
                },
                child: Text("Licencias usadas")
            ),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: Text("Mostrar diálogo")
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text("Mostrar Snackbar"),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
