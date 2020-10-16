import 'package:flutter/material.dart';


class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.red[450],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SYMPTOMS",
                          style: TextStyle(color: Colors.blue[900])),
                      SizedBox(height: 20.0),
                      Text(
                          "Memory loss is the key symptom of Alzheimer's disease. An early sign of the disease is usually difficulty remembering recent events or conversations. As the disease progresses, memory impairments worsen and other symptoms develop. At first, a person with Alzheimer's disease may be aware of having difficulty with remembering things and organizing thoughts. A family member or friend may be more likely to notice how the symptoms worsen.Brain changes associated with Alzheimer's disease lead to growing trouble with:"),
                    ],
                  ),
                ),
              ),
            ),
          ]
        )
         )

    );}}