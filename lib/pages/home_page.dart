import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedDate = DateTime.now();
  var selected = false;
  var f = DateFormat("dd/MM/yyyy EEEE");
  var modVal = 0;
  var houseName = "";
  var myanmarYear = 0;
  var numberMaharBote = '';
  late DateTime picked;
  var number = [1, 4, 0, 3, 6, 2, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Mahabote"),
      ),
      body: _homeDesign(),
    );
  }

  TextStyle _selectedColor(val) => TextStyle(
      color: houseName == val ? Theme.of(context).primaryColor : Colors.black);
    
  Text _labelText(val) => Text(val, style: _selectedColor(val));

  Widget _mahaboteLayout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelText("အဓိပတိ"),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelText("အထွန်း"),
                _labelText("သိုက်"),
                _labelText("ရာဇ"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelText("မရဏ"),
                _labelText("ဘင်္ဂ"),
                _labelText("ပုတိ"),
              ],
            ),
          ],
        ),
      );

  String _houseResult(year, day) {
    var houses = ["ဘင်္ဂ", "အထွန်း", "ရာဇ", "အဓိပတိ", "မရဏ", "သိုက်", "ပုတိ"];
    return houses[(year - day - 1) % 7];
  }

 TextStyle _selectedColorNumber(val) => TextStyle(
      color: numberMaharBote == val ? Theme.of(context).primaryColor : Colors.black);
    
  Text _labelNumber(val) => Text(val, style: _selectedColorNumber(val));


  Widget _number0Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၄'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၆"),
                _labelNumber("၂"),
                _labelNumber("၅"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၃"),
                _labelNumber('၀'),
                _labelNumber("၁"),
              ],
            ),
          ],
        ),
      );

  Widget _number1Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၅'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၀"),
                _labelNumber("၃"),
                _labelNumber("၆"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၄"),
                _labelNumber('၁'),
                _labelNumber("၂"),
              ],
            ),
          ],
        ),
      );

Widget _number2Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၆'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၁"),
                _labelNumber("၄"),
                _labelNumber("၀"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၅"),
                _labelNumber('၂'),
                _labelNumber("၃"),
              ],
            ),
          ],
        ),
      );
      Widget _number3Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၀'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၂"),
                _labelNumber("၅"),
                _labelNumber("၁"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၆"),
                _labelNumber('၃'),
                _labelNumber("၄"),
              ],
            ),
          ],
        ),
      );

Widget _number4Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၁'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၃"),
                _labelNumber("၆"),
                _labelNumber("၂"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၀"),
                _labelNumber('၄'),
                _labelNumber("၅"),
              ],
            ),
          ],
        ),
      );
Widget _number5Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၂'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၄"),
                _labelNumber("၀"),
                _labelNumber("၃"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၁"),
                _labelNumber('၅'),
                _labelNumber("၆"),
              ],
            ),
          ],
        ),
      );
Widget _number6Layout() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(""),
                _labelNumber('၃'),
                const Text(""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၅"),
                _labelNumber("၁"),
                _labelNumber("၄"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _labelNumber("၂"),
                _labelNumber('၆'),
                _labelNumber("၀"),
              ],
            ),
          ],
        ),
      );

  String _numberResult(year, day) {
    var number = ['၁', '၂', '၃', '၄', '၅', '၆', '၀'];
    return number[modVal];
  }

  var isChecked = false;
  //1,4,0,3,6,2,5
  Widget _homeDesign() => ListView(
        children: <Widget>[
          Container(
            height: 120,
            color: Theme.of(context).primaryColor,
            child: ElevatedButton(
                onPressed: () async {
                  picked = (await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2025),
                      helpText: 'Select Your Birthday', // Can be used as title
                      cancelText: 'Not now'))!;
                  setState(() {
                    changeMyanmarYear(picked);
                  });
                },
                child: selected
                    ? Text(f.format(selectedDate))
                    : const Text("Select Your Birthday")),
          ),
          selectedDate.month == 4
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          changeMyanmarYear(picked);
                        });
                      },
                    ),
                    const Text('မြန်မာ နှစ်သစ်ကူးပြီးမှ မွေးဖွားသည်။')
                  ],
                )
              : Container(),
          selected == false
              ? Container()
              : Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 150,
                        child: Card(child: Center(child: _mahaboteLayout())),
                      ),
                      Card(
                        child: Center(
                          child: Column(
                            children: [
                              Text("အကြွင်း $modVal"),
                              Text(
                                houseName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 150,
                        child: Card(
                          child: Center(
                            child: modVal == 0 ? _number0Layout() : modVal==1?_number1Layout(): modVal==2?_number2Layout(): modVal==3?_number3Layout(): modVal==4?_number4Layout(): modVal==5?_number5Layout(): modVal==6?_number6Layout():Container(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      );

  void changeMyanmarYear(picked) {
    if (picked != null) {
      myanmarYear = picked.year - 638;
      if (picked.month < 4) {
        myanmarYear = picked.year - 637;
      }
      isChecked == false && picked.month == 4 ? myanmarYear -= 1 : myanmarYear;
      setState(() {
        selectedDate = picked;
        modVal = myanmarYear % 7;
        houseName = _houseResult(myanmarYear, picked.weekday);
        numberMaharBote = _numberResult(myanmarYear, picked.weekday);
        selected = true;
      });
    }
  }
}
