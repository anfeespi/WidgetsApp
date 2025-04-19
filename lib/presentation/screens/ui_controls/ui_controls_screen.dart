import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UI Controls")),
      body: _UIControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool breakfast = false;
  bool lunch = false;
  bool dinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text("Developer Mode"),
          subtitle: Text("Controles adicionales"),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),

        ExpansionTile(
          title: Text("Vehiculo de transporte"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
              title: Text("By car"),
              subtitle: Text("Viajar por carro"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.car;
                  }),
            ),

            RadioListTile(
              title: Text("By boat"),
              subtitle: Text("Viajar por barco"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.boat;
                  }),
            ),

            RadioListTile(
              title: Text("By plane"),
              subtitle: Text("Viajar por avión"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.plane;
                  }),
            ),

            RadioListTile(
              title: Text("By submarine"),
              subtitle: Text("Viajar por submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.submarine;
                  }),
            ),
          ],
        ),

        CheckboxListTile(
          title: Text("¿Desayuno?"),
          value: breakfast,
          onChanged:
              (value) => setState(() {
                breakfast = !breakfast;
              }),
        ),
        CheckboxListTile(
          title: Text("¿Almuerzo?"),
          value: lunch,
          onChanged:
              (value) => setState(() {
                lunch = !lunch;
              }),
        ),
        CheckboxListTile(
          title: Text("¿Cena?"),
          value: dinner,
          onChanged:
              (value) => setState(() {
                dinner = !dinner;
              }),
        ),
      ],
    );
  }
}
