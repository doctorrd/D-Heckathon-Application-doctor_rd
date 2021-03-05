import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor RD',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("  Doctor RD \nTranscending Your Illness",
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor RD")),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'Assess Yourself',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'If you are experiencing any irregular medical symptoms and fear that you may have any underlying medical conditions/ disorders/ disease',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              height: 50,
              minWidth: 330,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: Colors.red, width: 2, style: BorderStyle.solid)),
              textColor: Colors.white,
              child: Text(
                'CLICK HERE',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClickInquire()),
                );
              },
            ),
            SizedBox(height: 60),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'If you wish to acquire additional information regarding your symptoms',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              height: 50,
              minWidth: 330,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(
                      color: Colors.red, width: 2, style: BorderStyle.solid)),
              textColor: Colors.white,
              child: Text(
                'CLICK HERE',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClickPatient()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

var filteredList = [];
var dataList = [1, 2, 11, 33, 43, 556, 332, 343];
var textData = '';

class ClickInquire extends StatelessWidget {
  final TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just Inquire"),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.values.elementAt(0),
          children: <Widget>[
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text:
                    ' Please enter your symptoms here. \n(You can enter multiple symptoms.)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 330,
              child: TextFormField(
                scrollPadding: const EdgeInsets.all(20.0),
                maxLines: null,
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
                textAlign: TextAlign.center,
                autocorrect: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  textData = value;
                },
                onFieldSubmitted: (value) {},
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              height: 50,
              minWidth: 270,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              textColor: Colors.white,
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FeedbackListPageState()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ClickPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    filteredList.addAll(dataList);
    print(filteredList);
    return Scaffold(
      appBar: AppBar(
        title: Text("SYMPTOMS"),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.values.elementAt(0),
          children: <Widget>[
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    ' Please enter your symptoms here. \n(You can enter multiple symptoms.)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 330,
              child: TextFormField(
                enabled: true,
                scrollPadding: const EdgeInsets.all(20.0),
                maxLines: null,
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
                textAlign: TextAlign.center,
                autocorrect: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  print(value);

                  filteredList
                      .clear(); //for the next time that we search we want the list to be unfilterted
                  filteredList
                      .addAll(dataList); //getting list to original state

//removing items that do not contain the entered Text
                  filteredList.removeWhere(
                      (i) => i.contains(value.toString()) == false);
                },
                onFieldSubmitted: (value) {},
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              height: 50,
              minWidth: 270,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              textColor: Colors.white,
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FeedbackListPageState()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<List> symptoms = [
  ['']
];
List<List> medical = [
  ['']
];
List<String> temp = [];
var index1 = -1;
var url = '';
var title = '';

class FeedbackListPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    for (var i in symptoms) {
      int distCounter = 0;
      for (var J in i) {
        print(J);
        for (int n = 0; n < (textData.length); n++) {
          if (textData[n] != J[n]) {
            distCounter += 1;
          }
          if (distCounter == J.length) {
            temp.add(J);
          }
        }
      }
    }

    medical = [
      [
        'Angelman',
        'Ubiquitin Protein ligase E3A',
        'Quebec Angelman Syndrome Foundation',
        'https://angelman.ca',
        'Toronto General Hospital',
        '200 Elizabeth Street, \nM5G 2C4, TORONTO, Ontario,  \nPhone : 1(416)340-5145'
      ],
      [
        'Amyloidosis',
        'Serum Amyloid A1',
        'The Canadian Amyloidosis Support Network',
        'http://thecasn.org/',
        'Health Sciences Centre',
        '820 Sherbrook Street, \nR3A 1R9 WINNIPEG, Manitoba, \nPhone : 1(204)787-2494',
      ],
      [
        '3C syndrome',
        'WASH complex subunit 5',
        'Little People of Canada',
        'http://comdir.bfree.on.ca/lpc/',
        'Mount Sinai Hospital',
        '600 University Avenue, \nM5G 1Z5, TORONTO,  Ontario,  \nPhone : 1 (416) 586-4523'
      ],
      [
        'Abetalipoproteinemia',
        'Microsomal Triglyceride Transfer Protein',
        'See our community directory',
        'https://rqmo.org/votre-temoignage-a-notre-galerie-la-mosaique/',
        'Genetics Clinic, Credit Valley Hospital',
        '2200 Eglinton Ave West, \nL5M 2N1 MISSISSAUGA, Ontario, \nPhone : 1 (905) 813-4104'
      ],
      [
        'Achondroplasia',
        'Fibroblast Growth Factor Receptor 3',
        'Little People of Canada',
        'http://comdir.bfree.on.ca/lpc/',
        'The Hospital for Sick Children \nand\n University of Toronto',
        '555 University Avenue, \nM5G 2L3 ,TORONTO,  Ontario,   \nPhone : 01 (416) 813-6390'
      ]
    ];
    symptoms = [
      [
        'Seizures',
        'Global developmental delay',
        'EEG abnormality',
        'Cessation of head growth',
        'Postnatal microcephaly',
        'EEG with abnormally slow frequencies',
        'Neurodevelopmental delay'
      ],
      [
        'Abnormality of the kidney',
        'Proteinuria',
        'Nephropathy',
        'Renal amyloidosis',
        'Hypotension'
      ],
      [
        'Abnormality of the fontanelles or cranial sutures',
        'Hypertelorism',
        'Wide nasal bridge',
        'Intellectual disability',
        'Muscular hypotonia',
        'Global developmental delay',
        'Dandy-Walker malformation',
        'Frontal bossing',
        'Neurological speech impairment'
      ],
      [
        'Abnormality of the nervous system',
        'Acanthocytosis',
        'Steatorrhea',
        'Fat malabsorption',
        'Abnormal apolipoprotein level',
        'Low levels of vitamin E',
      ],
      [
        'Kyphosis',
        'Bowing of the legs',
        'Disproportionate short stature',
        'Thoracolumbar kyphosis',
        'Limb undergrowth',
      ]
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Possible Diseases/Disorders'),
      ),
      body: ListView.builder(
        itemCount: medical.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              index1 = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detailpage()),
              );
            },
            title: Row(
              children: <Widget>[
                Expanded(
                    child: Text('  ' + medical[index][0],
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            subtitle: Row(
              children: <Widget>[
                Expanded(
                    child: Text('  Contact :- ' + medical[index][2],
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal)))
              ],
            ),
          );
        },
      ),
    );
  }
}

class Detailpage extends StatelessWidget {
  var detail = '';
  @override
  Widget build(BuildContext context) {
    for (var i in symptoms[index1]) {
      detail = detail + ' ' + i + ' \n';
      print(detail);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Possible Disease/Disorder',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: medical[index1][0],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Symptoms',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: detail,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Gene Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: medical[index1][1],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Hospital',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: medical[index1][4] + ',\n' + medical[index1][5],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            FlatButton(
              height: 40,
              minWidth: 200,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              textColor: Colors.white,
              child: Text(
                'Contact Medcare',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                title = 'Contact Medcare';
                url = 'https://www.uhn.ca/OurHospitals/TGH/';
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewClass()));
              },
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: 'Support Center',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ),
            RichText(
              text: TextSpan(
                text: medical[index1][2],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            FlatButton(
              height: 40,
              minWidth: 200,
              splashColor: Colors.red,
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              textColor: Colors.white,
              child: Text(
                'Contact Community',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                title = 'Contact Community';
                url = 'https://angelman.ca';
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewClass()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WebViewClass extends StatefulWidget {
  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Information'),
      ),
      body: WebView(
        initialUrl: url,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}

/*class WebViewExampleState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
      ),
      body: const WebView(
        initialUrl: '\(medical[index1][3])',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}*/
