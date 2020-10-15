import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Info extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Know about Dementia"),
            backgroundColor: Colors.green[600],
          ),
          body:SingleChildScrollView(
              child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                SizedBox(height:20.0),
                Text("ALZHEIMER DISEASE",style: TextStyle(color:Colors.blue[900])),
                SizedBox(height:20.0),
                Text("Alzheimer's disease is a progressive disorder that causes brain cells to waste away (degenerate) and die.It is the most common cause of dementia — a continuous decline in thinking, behavioral and social skills that disrupts a person's ability tofunction independently. The early signs of the disease may be forgetting recent events or conversations. As the disease progresses, a person with Alzheimer's disease will develop severe memory impairment and lose the ability to carry out everyday tasks.Current Alzheimer's disease medications may temporarily improve symptoms or slow the rate of decline. These treatments can sometimes help people with Alzheimer's disease maximize function and maintain independence for a time.Different programs and services can help support people with Alzheimer's disease and their caregivers. There is no treatment that cures Alzheimer's disease or alters the disease process in the brain. In advanced stages of the disease, complications from severe loss of brain function —such as dehydration, malnutrition or infection — result in death."),
                SizedBox(height:20.0),
                Text("SYMPTOMS",style:TextStyle(color:Colors.blue[900])),
                SizedBox(height:20.0),
                Text("Memory loss is the key symptom of Alzheimer's disease. An early sign of the disease is usually difficulty remembering recent events or conversations. As the disease progresses, memory impairments worsen and other symptoms develop. At first, a person with Alzheimer's disease may be aware of having difficulty with remembering things and organizing thoughts. A family member or friend may be more likely to notice how the symptoms worsen.Brain changes associated with Alzheimer's disease lead to growing trouble with:"),
                Text("-->Memory",style: TextStyle(fontWeight:FontWeight.bold)),
                Text("Everyone has occasional memory lapses. It's normal to lose track of where you put your keys or forget the name of an acquaintance. But the memory loss associated with Alzheimer's disease persists and worsens, affecting the ability to function at work or at home."),
                Text("People with Alzheimer's may:"),
                Text("*  Repeat statements and questions over and over"),
                Text("*  Forget conversations, appointments or events, and not remember them later"),
                Text("*  Routinely misplace possessions, often putting them in illogical locations"),
                Text("*  Get lost in familiar places"),
                Text("*  Eventually forget the names of family members and everyday objects"),
                Text("*  Have trouble finding the right words to identify objects, express thoughts or take part in conversations"),
                Text("*  Thinking and reasoning"),
                Text("*  Alzheimer's disease causes difficulty concentrating and thinking, especially about abstract concepts such as numbers."),
                Text("-->Making  judgments and decisions",style: TextStyle(fontWeight:FontWeight.bold)),
                Text("The ability to make reasonable decisions and judgments in everyday situations will decline. For example, a person may make poor or uncharacteristic choices in social interactions or wear clothes that are inappropriate for the weather. It may be more difficult to respond effectively to everyday problems, such as food burning on the stove or unexpected driving situations."),
                Text("-->Planning and performing familiar tasks",style: TextStyle(fontWeight:FontWeight.bold)),
                Text("Once-routine activities that require sequential steps, such as planning and cooking a meal or playing a favorite game, become a struggle as the disease progresses. Eventually, people with advanced Alzheimer's may forget how to perform basic tasks such as dressing and bathing."),
                Text("-->Changes in personality and behavior",style: TextStyle(fontWeight:FontWeight.bold)),
                
              ],
            ),
          ),
    );
  }
}
