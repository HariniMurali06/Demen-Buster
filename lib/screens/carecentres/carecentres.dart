import 'package:flutter/material.dart';

class Carecentres extends StatefulWidget {
  @override
  _CarecentresState createState() => _CarecentresState();
}

class _CarecentresState extends State<Carecentres> {
  final name = [
    'ALL INDIA INSTITUTE OF MEDICAL SCIENCES, NEW DELHI',
    'KIMS HOSPITAL',
    'BLK SUPER SPECIALITY HOSPITAL',
    'FORTIS MALAR HOSPITAL CHENNAI',
    ' GLENEAGLES GLOBAL HEALTH CITY',
    'APOLLO CITY CENTRE HOSPITAL',
    'MIOT INTERNATIONALS',
    'MANIPAL HOSPITAL BANGLORE',
    'MEDANTA THE MEDICITY, GURGAON',
    'ARTEMIS HOSPITAL, GURGAON',
    'VEE CARE HOME NURSING SERVICE',
    'GRAND WORLD ELDER CARE',
    'ANVAYAA- SENIOR HOME HEALTH CARE SERVICES',
    'NIGHTINGALES MEDICAL TRUST',
    'DIGNITY FOUNDATIONS',
    'ALZHEIMERS AND RELATED DISORDER SOCIETY-BANGALORE CHAPTERS',
    'KSHETRA ASSISTED LIVING AND DEMENTIA CARE FACILITY',
    'HELPAGE INDIA',
    'DEMCARE, DEMENTIA CARE IN SCARF',
    'ARDSI CHENNAI CHAPTER AND MADRAS MEMORY CLINIC'
  ];

  final address = [
    'Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi 110029',
    'Kims, Ambedkar Nagar, Nellore, Andhra Pradesh 524003',
    'BLK Super Speciality Hospital,  Pusa Road,  New Delhi-110005',
    'No. 52, 1st Main Rd, Gandhi Nagar, Adyar, Chennai, Tamil Nadu 600020',
    '439, Embassy Residency Rd, Cheran Nagar, Perumbakkam,   Chennai, Tamil Nadu 600100',
    'No. 134, Mint St, opposite Ramar Temple, Sowcarpet, Peddanaickenpet, George Town, Chennai, Tamil Nadu 600079',
    '4/112, Mount Poonamalle High Rd, Sathya Nagar, Manapakkam, Chennai, Tamil Nadu 600089',
    '98, HAL Old Airport Rd, Kodihalli, Bengaluru, Karnataka 560017',
    'CH Baktawar Singh Road, Sector 38, Gurugram, Haryana 122001',
    'Near Unitech Cyber park, Sector 51, Gurgaon, Haryana - 122001',
    'No : C/B-10, First Floor, Gemini Parsn Complex, Kodambakkam High Road, Chennai - 600 006',
    'Tranquil acres,Block B1 Phase 1, 200 Feet MMRD Thoraipakkam Pallavaram Main Road,Kovilampakkam, Chennai, TamilNadu 600129',
    'Anvayaa Kincare Pvt. Ltd. 202, 2nd floor, Plot no.705, Road no.36, jubilee hills Hyderabad: 500 033 LandMark: Above WoodLand Showroom',
    '8P6, 3rd A Cross Rd, Kasturinagar, Banasawadi, Bengaluru 560043, India',
    'Dignity Foundation 132, (Old No.52-A), AK Block, 7th Main Road, Anna Nagar, Chennai - 600040',
    'c/o Nightingales Medical Trust, 8P6, 3rd A Cross, Kasturinagar, Banaswadi, Bangalore 560043',
    'Plot No. 8, 9,14,15, Rd Number 12, Sai Aishwarya Layout Khajaguda, Telangana 500089 Landmarks: Sai Baba Temple,beside Manikonda Cheruvu (lake)',
    'C–14 Qutab Institutional Area New Delhi - 110016',
    'R/7a , North Main Road, Anna Nagar West Extension, Kailash Colony,Sector A, Anna Nagar West Extension, Chennai 600101, Tamil Nadu ,India',
    'D89, 3rd Street, Anna Nagar East, Chennai 600 102'
  ];

  final number = [
    '9500852560',
    '08612315835',
    '+911130403040 ',
    '09962599933',
    '04444777000',
    '18605004916',
    '04442002288',
    '18001025555',
    '01244141414',
    '01244511111',
    '+914423745643',
    '7667711111',
    '+917288818181',
    '+918042426565',
    '+914426210363',
    '+918042426565',
    '+919666641238',
    '01141688955',
    '7358588822',
    '04442629209'
  ];

  final type = [
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'hospital',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
        title: Text("Top CareCenters"),
        backgroundColor: Colors.green[500],
        shadowColor: Colors.green[200],
        elevation: 50,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(address.length, (index) {
          return Card(
            elevation: 20,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    name[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    type[index],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      FlatButton.icon(
                        label: Text("Details"),
                        icon: Icon(Icons.info_outline),
                        onPressed: () {
                          Navigator.pushNamed(context, '/details',
                              arguments: {
                                'address':address[index],
                                'name':name[index],
                                'type':type[index],
                                'number':number[index],
                              });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
