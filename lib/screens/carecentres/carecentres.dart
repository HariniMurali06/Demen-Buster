import 'package:flutter/material.dart';

class Carecentres extends StatefulWidget {
  @override
  _CarecentresState createState() => _CarecentresState();
}

class _CarecentresState extends State<Carecentres> {
  final address = [
    "No : C/B-10, First Floor, Gemini Parsn Complex ,Kodambakkam High Road,Chennai - 600 006.",
    "Tranquil acres,Block B1 Phase 1,200 Feet MMRDThoraipakkam Pallavaram Main Road,Kovilampakkam,Chennai, Tamilnadu 600129.",
    "Anvayaa Kincare Pvt. Ltd,202, 2nd floor,Plot no.705,Road no.36, jubilee hills,Hyderabad: 500 033,LandMark: Above WoodLand Showroom",
    "8P6, 3rd A Cross Rd,Kasturinagar, Banasawadi, Bengaluru 560043, India",
    "Dignity Foundation,132, (Old No.52-A), AK Block, 7th Main Road,Anna Nagar, Chennai - 600040",
    "c/o Nightingales Medical Trust,8P6, 3rd A Cross, Kasturinagar, Banaswadi, Bangalore 560043",
    "Plot No. 8, 9,14,15,		Rd Number 12, Sai Aishwarya LayoutKhajaguda, Telangana 500089,Landmarks: Sai Baba Temple,beside Manikonda Cheruvu (lake)",
    "C–14, Qutab Institutional Area,New Delhi - 110016",
    "R/7a , North Main Road,Anna Nagar West Extension,	Kailash Colony,Sector A,Anna Nagar West Extension,	Chennai 600101,Tamil Nadu ,India .",
    "D89, 3rd Street,Anna Nagar East,Chennai 600 102",
    " Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi 110029",
    " Kims, Ambedkar Nagar, Nellore, Andhra Pradesh 524003",
    "BLK Super Speciality Hospital,  Pusa Road,  New Delhi-110005 ",
    " No. 52, 1st Main Rd, Gandhi Nagar, Adyar, Chennai, Tamil Nadu 600020 ",
    "439, Embassy Residency Rd, Cheran Nagar, Perumbakkam,   Chennai, Tamil Nadu 600100",
    " No. 134, Mint St, opposite Ramar Temple, Sowcarpet, Peddanaickenpet, George Town, Chennai, Tamil Nadu 600079 ",
    " 4/112, Mount Poonamalle High Rd, Sathya Nagar, Manapakkam, Chennai, Tamil Nadu 600089",
    " 98, HAL Old Airport Rd, Kodihalli, Bengaluru, Karnataka 560017",
    " CH Baktawar Singh Road, Sector 38, Gurugram, Haryana 122001",
    "Near Unitech Cyber park, Sector 51, Gurgaon, Haryana - 122001 ",
  ];

  final contact = [
    " +91 44 23745643/+91 9283683561 / +91 9444414171",
    "7667711111",
    "+91 7288818181 / 939 2682922",
    "+91 80 42426565",
    "+91 44 2621 0363",
    "+91 80 42426565",
    "+91 96666 41238",
    "011-41688955/56",
    " 7358588822",
    "(044) 42629209/(0)98 4101 9910",
    " 011 2658 8500",
    " 0861 231 5835",
    "+91 -11-3040 3040",
    "099625 99933 ",
    " 044 4477 7000",
    " 1860 500 4916",
    " 044 4200 2288",
    "1800 102 5555",
    " 0124 414 1414 ",
    " 0124 451 1111 ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    address[index],
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
                    contact[index],
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
                        onPressed: () {},
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
