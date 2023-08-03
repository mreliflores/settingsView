import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double paddingTitles = 20.0;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          child: SizedBox(
            width: screenWidth,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 40),
                    child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: paddingTitles, bottom: paddingTitles),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Account(),
                  Padding(
                    padding: EdgeInsets.only(top: paddingTitles, bottom: paddingTitles),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  
                  SettingOption(
                    color: Color.fromARGB(255, 255, 123, 0),
                    next: Icons.language_rounded,
                    option: 'Languages',
                    subOption: 'English',
                    isDarkOption: false
                  ),
                  SettingOption(
                    color: Color.fromARGB(255, 73, 100, 255),
                    next: Icons.notifications,
                    option: 'Notifications',
                    subOption: '',
                    isDarkOption: false
                  ),
                  SettingOption(
                    color: Color.fromARGB(255, 97, 3, 247),
                    next: Icons.dark_mode_sharp,
                    option: 'Notifications',
                    subOption: 'ON',
                    isDarkOption: true
                  ),
                  SettingOption(
                    color: Color.fromARGB(255, 241, 29, 29),
                    next: Icons.help_outline,
                    option: 'Help',
                    subOption: '',
                    isDarkOption: false
                  ),
                  
                ]
              ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: const Icon(Icons.person, color: const Color.fromARGB(255, 83, 83, 83), size:25)
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'David Clerisseau',
                      style: TextStyle(
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      'Personal Info',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(10)
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: const Icon(Icons.chevron_right),
              onTap: () {
                //TODO
              },
            ),
          )
        ],
      ),
    );
  }
  
}

class SettingOption extends StatefulWidget {
  final Color color;
  final IconData next;
  final String option;
  final String subOption;
  final bool isDarkOption;
  const SettingOption({
    super.key,
    required this.color,
    required this.next,
    required this.option,
    required this.subOption,
    required this.isDarkOption
  });
  @override
  State<SettingOption> createState() => _SettingOption();
}

class _SettingOption extends State<SettingOption> {
  bool _toggle = false;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: widget.color.withOpacity(.3),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(widget.next, color: widget.color, size:20)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  widget.option,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700
                  ),
                ),
              )
            ]
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  _toggle || !widget.isDarkOption ? widget.subOption:'OFF',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              !widget.isDarkOption ? Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  child: const Icon(Icons.chevron_right),
                  onTap: () {
                    //TODO
                  },
                ),
              ):SizedBox(
                  width: 40,
                  height: 40,
                  child: Transform.scale(
                    scale: .8,
                    child: Switch(value: _toggle, onChanged: (value) {
                      setState(() {
                         _toggle = value;
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.blue,),
                  )
              ),
            ]
          ),
        ],
      ),
    );
  }

}