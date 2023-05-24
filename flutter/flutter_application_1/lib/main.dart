import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  String selectedCountry = '';
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  String nameResult = '';
  String ageResult = '';
  String daysResult = '';
  String countryResult = '';
  String dateResult = '';
  String timeResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            Container(
              width: 350,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                ),
              ),
            ),
            const SizedBox(height: 60),
            Column(
              children: <Widget>[
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: "Age",
                      hintText: "Enter your age",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Column(
              children: <Widget>[
                const Text("Monday"),
                Checkbox(
                  value: monday,
                  onChanged: (value) {
                    setState(() {
                      monday = value!;
                    });
                  },
                ),
                const SizedBox(width: 16),
                const Text("Tuesday"),
                Checkbox(
                  value: tuesday,
                  onChanged: (value) {
                    setState(() {
                      tuesday = value!;
                    });
                  },
                ),
                const SizedBox(width: 16),
                const Text("Wednesday"),
                Checkbox(
                  value: wednesday,
                  onChanged: (value) {
                    setState(() {
                      wednesday = value!;
                    });
                  },
                ),
                const SizedBox(width: 16),
                const Text("Thursday"),
                Checkbox(
                  value: thursday,
                  onChanged: (value) {
                    setState(() {
                      thursday = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 350,
                  child: DropdownButton<String>(
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'India',
                        child: Text('India'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'England',
                        child: Text('England'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'South Africa',
                        child: Text('South Africa'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'New Zealand',
                        child: Text('New Zealand'),
                      ),
                    ],
                    value: selectedCountry.isEmpty ? null : selectedCountry,
                    onChanged: (value) {
                      setState(() {
                        selectedCountry = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: 350,
              child: DropdownSearch<String>(
                mode: Mode.DIALOG,
                showSearchBox: true,
                showSelectedItems: true,
                items: const [
                  "India",
                  "Ireland",
                  "England",
                  "South Africa",
                  "West Indies",
                  "Afghanistan",
                  "New Zealand",
                  "USA",
                  "Canada",
                  "Australia",
                ],
                // ignore: deprecated_member_use
                hint: "Select a country",
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    ).then((date) {
                      if (date != null) {
                        setState(() {
                          selectedDate = date;
                        });
                      }
                    });
                  },
                  child: const Text('Select Date'),
                ),
                const SizedBox(width: 16),
                Text(DateFormat('yyyy-MM-dd').format(selectedDate)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                    ).then((time) {
                      if (time != null) {
                        setState(() {
                          selectedTime = time;
                        });
                      }
                    });
                  },
                  child: const Text('Select Time'),
                ),
                const SizedBox(width: 16),
                Text(selectedTime.format(context)),
              ],
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                printResults();
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 16),
            Text(' $nameResult'),
            Text(' $ageResult'),
            Text(' $daysResult'),
            Text(' $countryResult'),
            Text(' $dateResult'),
            Text(' $timeResult'),
          ],
        ),
      ),
    );
  }

  String getDaysResult() {
    List<String> selectedDays = [];
    if (monday) selectedDays.add('Monday');
    if (tuesday) selectedDays.add('Tuesday');
    if (wednesday) selectedDays.add('Wednesday');
    if (thursday) selectedDays.add('Thursday');
    return selectedDays.join(', ');
  }

  void printResults() {
    setState(() {
      nameResult = nameController.text;
      ageResult = ageController.text;
      daysResult = getDaysResult();
      countryResult = selectedCountry;
      dateResult = DateFormat('yyyy-MM-dd').format(selectedDate);
      timeResult = selectedTime.format(context);
    });
    print(': $nameResult');
    print(': $ageResult');
    print(' $daysResult');
    print(' $countryResult');
    print(' $dateResult');
    print(' $timeResult');
  }
}
