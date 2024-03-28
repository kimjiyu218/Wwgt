import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WWGT',
      theme: ThemeData(),
      home: const MyHomePage(title: 'WWGT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String appVersion = 'v.1.0.0'; // 앱 버전 정보

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Asha Kim'),
              accountEmail: Text('yoo5910@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            const SizedBox(height: 20), // 추가된 부분
            ListTile(
              title: const Text('고객센터'),
              onTap: () {
                // Item 1을 클릭했을 때 수행할 작업
              },
            ),
            ListTile(
              title: const Text('공지사항/이벤트'),
              onTap: () {
                // Item 2를 클릭했을 때 수행할 작업
              },
            ),
            ListTile(
              title: const Text('서비스정책'),
              onTap: () {
                // Item 2를 클릭했을 때 수행할 작업
              },
            ),
            ListTile(
              title: const Text('버전 정보'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('버전 정보'),
                      content: Text(appVersion),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('확인'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: const Text(
                'WWGT',
                style: TextStyle(
                  color: Color(0xFF009C89),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/manpage.jpg',
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      // 여권 모양 아이콘 클릭 시 수행할 작업
                    },
                    icon: Icon(Icons.airplanemode_active),
                    iconSize: 30, // 여권 모양 아이콘
                  ),
                  IconButton(
                    onPressed: () {
                      // 여행가방 모양 아이콘 클릭 시 수행할 작업
                    },
                    icon: Icon(Icons.card_travel),
                    iconSize: 30, // 여행가방 모양 아이콘
                  ),
                  IconButton(
                    onPressed: () {
                      // 항공 모양 아이콘 클릭 시 수행할 작업
                    },
                    icon: Icon(Icons.airplanemode_on),
                    iconSize: 30, // 항공 모양 아이콘
                  ),
                  IconButton(
                    onPressed: () {
                      // 호텔 모양 아이콘 클릭 시 수행할 작업
                    },
                    icon: Icon(Icons.hotel),
                    iconSize: 30, // 호텔 모양 아이콘
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "TRIPGRAM",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: Image.asset('assets/travel.png'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
