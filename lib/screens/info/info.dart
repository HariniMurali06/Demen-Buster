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
                borderOnForeground: false,
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ALZHEIMER DISEASE",
                          style: TextStyle(color: Colors.blue[900])),
                      SizedBox(height: 20.0),
                      Text(
                          "Alzheimer's disease is a progressive disorder that causes brain cells to waste away (degenerate) and die.It is the most common cause of dementia — a continuous decline in thinking, behavioral and social skills that disrupts a person's ability tofunction independently. The early signs of the disease may be forgetting recent events or conversations. As the disease progresses, a person with Alzheimer's disease will develop severe memory impairment and lose the ability to carry out everyday tasks.Current Alzheimer's disease medications may temporarily improve symptoms or slow the rate of decline. These treatments can sometimes help people with Alzheimer's disease maximize function and maintain independence for a time.Different programs and services can help support people with Alzheimer's disease and their caregivers. There is no treatment that cures Alzheimer's disease or alters the disease process in the brain. In advanced stages of the disease, complications from severe loss of brain function —such as dehydration, malnutrition or infection — result in death."),
                    ],
                  ),
                ),
              ),
            ),
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
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Memory",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "Everyone has occasional memory lapses. It's normal to lose track of where you put your keys or forget the name of an acquaintance. But the memory loss associated with Alzheimer's disease persists and worsens, affecting the ability to function at work or at home."),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.0),
                      Text("People with Alzheimer's may:"),
                      SizedBox(height: 5.0),
                      Text("*  Repeat statements and questions over and over"),
                      Text(
                          "*  Forget conversations, appointments or events, and not remember them later"),
                      Text(
                          "*  Routinely misplace possessions, often putting them in illogical locations"),
                      Text("*  Get lost in familiar places"),
                      Text(
                          "*  Eventually forget the names of family members and everyday objects"),
                      Text(
                          "*  Have trouble finding the right words to identify objects, express thoughts or take part in conversations"),
                      Text("*  Thinking and reasoning"),
                      Text(
                          "*  Alzheimer's disease causes difficulty concentrating and thinking, especially about abstract concepts such as numbers."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Making  judgments and decisions",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "The ability to make reasonable decisions and judgments in everyday situations will decline. For example, a person may make poor or uncharacteristic choices in social interactions or wear clothes that are inappropriate for the weather. It may be more difficult to respond effectively to everyday problems, such as food burning on the stove or unexpected driving situations."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Planning and performing familiar tasks",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "Once-routine activities that require sequential steps, such as planning and cooking a meal or playing a favorite game, become a struggle as the disease progresses. Eventually, people with advanced Alzheimer's may forget how to perform basic tasks such as dressing and bathing."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Changes in personality and behavior",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "Brain changes that occur in Alzheimer's disease can affect moods and behaviors. Problems may include the following:"),
                      Text("*  Depression"),
                      Text("*  Apathy"),
                      Text("*  Social withdrawal"),
                      Text("*  Mood swings"),
                      Text("*  Distrust in others"),
                      Text("*  Irritability and aggressiveness"),
                      Text("*  Changes in sleeping habits"),
                      Text("*  Wandering"),
                      Text("*  Loss of inhibitions"),
                      Text(
                          "*  Delusions, such as believing something has been stolen"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("STAGES OF ALZEIMERS ",
                          style: TextStyle(color: Colors.blue[900])),
                      SizedBox(height: 10.0),
                      Text("It has seven stages"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.green[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 1: No Impairment",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "During this stage, Alzheimer’s is not detectable and no memory problems or other symptoms of dementia are evident."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.green[100],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 2: Very Mild Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "The senior may notice minor memory problems or lose things around the house, although not to the point where the memory loss can easily be distinguished from normal age-related memory loss. The person will still do well on memory tests and the disease is unlikely to be detected by loved ones or physicians."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.orange[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 3: Mild Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "At this stage, the family members and friends of the senior may begin to notice cognitive problems. Performance on memory tests are affected and physicians will be able to detect impaired cognitive function."),
                      Text(
                          "People in stage 3 will have difficulty in many areas including:"),
                      SizedBox(height: 5.0),
                      Text("Finding the right word during conversations"),
                      Text("Organizing and planning"),
                      Text("Remembering names of new acquaintances"),
                      Text(
                          "People with stage three Alzheimer’s may also frequently lose personal possessions, including valuables."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.orange[400],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 4: Moderate Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "In stage four of Alzheimer’s, clear-cut symptoms of the disease are apparent. People with stage four of Alzheimer’s:"),
                      SizedBox(height: 5.0),
                      Text("Have difficulty with simple arithmetic"),
                      Text(
                          "Have poor short-term memory (may not recall what they ate for breakfast, for example)"),
                      Text("Inability to manage finance and pay bills"),
                      Text("May forget details about their life histories"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.red[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 5: Moderately Severe Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "During the fifth stage of Alzheimer’s, people begin to need help with many day-to-day activities. People in stage five of the disease may experience:"),
                      SizedBox(height: 5.0),
                      Text("Difficulty dressing appropriately"),
                      Text(
                          "Inability to recall simple details about themselves such as their own phone number"),
                      Text("Significant confusion"),
                      Text(
                          "On the other hand, people in stage five maintain functionality. They typically can still bathe and toilet independently. They also usually still know their family members and some detail about their personal histories, especially their childhood and youth."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.red[400],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stage 6: Severe Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "People with the sixth stage of Alzheimer’s need constant supervision and frequently require professional care. Symptoms include:"),
                      SizedBox(height: 5.0),
                      Text(
                          "Confusion or unawareness of environment and surroundings"),
                      Text(
                          "Inability to recognize faces except for the closest friends and relatives"),
                      Text(
                          "Inability to remember most details of personal history"),
                      Text("Loss of bladder and bowel control"),
                      Text(
                          "Major personality changes and potential behavior problems"),
                      Text(
                          "The need for assistance with activities of daily living such as toileting and bathing "),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Stages 7: Very Severe Decline",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "Stage seven is the final stage of Alzheimer’s. Because the disease is a terminal illness, people in stage seven are nearing death. In stage seven of the disease, people lose the ability to communicate or respond to their environment. While they may still be able to utter words and phrases, they have no insight into their condition and need assistance with all activities of daily living. In the final stages of Alzheimer’s, people may lose their ability to swallow."),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CAUSES ",
                          style: TextStyle(color: Colors.blue[900])),
                      SizedBox(height: 20.0),
                      Text(
                          "Scientists believe that for most people, Alzheimer's disease is caused by a combination of genetic, lifestyle and environmental factors that affect the brain over time. Less than 1 percent of the time, Alzheimer's is caused by specific genetic changes that virtually guarantee a person will develop the disease. These rare occurrences usually result in disease onset in middle age. The exact causes of Alzheimer's disease aren't fully understood, but at its core are problems with brain proteins that fail to function normally, disrupt the work of brain cells (neurons) and unleash a series of toxic events. Neurons are damaged, lose connections to each other and eventually die. The damage most often starts in the region of the brain that controls memory, but the process begins years before the first symptoms. The loss of neurons spreads in a somewhat predictable pattern to other regions of the brains. By the late stage of the disease, the brain has shrunk significantly."),
                      SizedBox(height: 5.0),
                      Text(
                          "Researchers are focused on the role of two proteins:"),
                      SizedBox(height: 5.0),
                      Text("Plaques:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0),
                      Text(
                          "Beta-amyloid is a leftover fragment of a larger protein. When these fragments cluster together, they appear to have a toxic effect on neurons and to disrupt cell-to-cell communication. These clusters form larger deposits called amyloid plaques, which also include other cellular debris."),
                      SizedBox(height: 5.0),
                      Text("Tangles: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0),
                      Text(
                          "Tau proteins play a part in a neuron's internal support and transport system to carry nutrients and other essential materials. In Alzheimer's disease, tau proteins change shape and organize themselves into structures called neurofibrillary tangles. The tangles disrupt the transport system and are toxic to cells."),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PREVENTIONS ",
                          style: TextStyle(color: Colors.blue[900])),
                      SizedBox(height: 10.0),
                      Text(
                          "Alzheimer's disease is not a preventable condition. However, a number of lifestyle risk factors for Alzheimer's can be modified. Evidence suggests that changes in diet, exercise and habits — steps to reduce the risk of cardiovascular disease — may also lower your risk of developing Alzheimer's disease and other disorders that cause dementia. Heart-healthy lifestyle choices that may reduce the risk of Alzheimer's include the following:"),
                      SizedBox(height: 5.0),
                      Text("*  Exercise regularly"),
                      Text(
                          "*  Eat a diet of fresh produce, healthy oils and foods low in saturated fat"),
                      Text(
                          "*  Follow treatment guidelines to manage high blood pressure, diabetes and high cholesterol"),
                      Text(
                          "*  If you smoke, ask your doctor for help to quit smoking"),
                      Text(
                          "*  Studies have shown that preserved thinking skills later in life and a reduced risk of Alzheimer's disease are associated with participating in social events, reading, dancing, playing board games, creating art, playing an instrument, and other activities that require mental and social engagement."),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
