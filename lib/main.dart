// import 'package:flutter/material.dart';
// import 'package:foodrescue/new.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:const ButtonSecondary(),
//       //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          SignUp(),
        ]),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 78,
                        top: -2,
                        child: SizedBox(
                          width: 219,
                          height: 30,
                          child: Stack(children: []),
                        ),
                      ),
                      Positioned(
                        left: 293.67,
                        top: 17.33,
                        child: SizedBox(
                          width: 66.66,
                          height: 11.34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 42.33,
                                top: 0,
                                child: SizedBox(
                                  width: 24.33,
                                  height: 11.33,
                                  child: Stack(children: []),
                                ),
                              ),
                              Positioned(
                                left: 22.03,
                                top: 0,
                                child: Container(
                                  width: 15.27,
                                  height: 10.97,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/15x11"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0.34,
                                child: Container(
                                  width: 17,
                                  height: 10.67,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/17x11"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 60,
                child: SizedBox(
                  width: 343,
                  height: 36,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 300,
                        top: 8,
                        child: Text(
                          'Login',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFF5980C),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 117,
                        top: 0,
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: -0.31,
                        top: 16,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
                          child: SizedBox(
                            width: 16,
                            height: 16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 6.36,
                                  top: 6.36,
                                  child: Transform(
                                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
                                    child: Container(
                                      width: 16.60,
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 2,
                                            strokeAlign: BorderSide.strokeAlignCenter,
                                            color: Color(0xFFBDBDBD),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.68,
                                  top: 4.95,
                                  child: Transform(
                                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.36),
                                    child: Container(
                                      width: 16.60,
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 2,
                                            strokeAlign: BorderSide.strokeAlignCenter,
                                            color: Color(0xFFBDBDBD),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 128,
                child: SizedBox(
                  width: 343,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xFFBDBDBD),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 194,
                child: SizedBox(
                  width: 343,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Color(0xFFBDBDBD),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 260,
                child: SizedBox(
                  width: 343,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xFFBDBDBD),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 284,
                        top: 16,
                        child: Text(
                          'Show',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFF5980C),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 342,
                child: SizedBox(
                  width: 343,
                  height: 17,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                        height: 16,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF6F6F6),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 320,
                        child: Text(
                          'I would like to receive your newsletter and other promotional information.',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 521,
                child: Container(
                  width: 375,
                  height: 291,
                  decoration: const BoxDecoration(color: Color(0xFFCCCED3)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 375,
                          height: 291,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 375,
                                height: 291,
                                decoration: const BoxDecoration(color: Color(0xFFD1D5DB)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 257,
                        child: Container(
                          width: 375,
                          height: 34,
                          padding: const EdgeInsets.only(
                            top: 21,
                            left: 121,
                            right: 120,
                            bottom: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 134,
                                height: 5,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 8,
                        child: SizedBox(
                          width: 369,
                          height: 259,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 327,
                                top: 233,
                                child: Container(
                                  width: 15,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/15x25"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 232,
                                child: Container(
                                  width: 27,
                                  height: 27,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/27x27"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 281,
                                top: 162,
                                child: SizedBox(
                                  width: 88,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 11,
                                        child: SizedBox(
                                          width: 88,
                                          child: Text(
                                            'Go',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                              height: 0.08,
                                              letterSpacing: -0.32,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 93,
                                top: 162,
                                child: SizedBox(
                                  width: 182,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 11,
                                        child: SizedBox(
                                          width: 182,
                                          child: Text(
                                            'space',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                              height: 0.08,
                                              letterSpacing: -0.32,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 0,
                                top: 162,
                                child: SizedBox(
                                  width: 87,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 11,
                                        child: SizedBox(
                                          width: 87,
                                          child: Text(
                                            '123',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                              height: 0.08,
                                              letterSpacing: -0.32,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 327,
                                top: 108,
                                child: SizedBox(
                                  width: 42,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 42,
                                          height: 42,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 11,
                                                child: SizedBox(
                                                  width: 42,
                                                  child: Text(
                                                    ' ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontFamily: 'SF Pro Text',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0.08,
                                                      letterSpacing: -0.32,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 9.66,
                                        top: 12.66,
                                        child: Container(
                                          width: 22.66,
                                          height: 16.99,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/23x17"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 108,
                                child: SizedBox(
                                  width: 42,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 42,
                                          height: 42,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 42,
                                                  height: 42,
                                                  decoration: ShapeDecoration(
                                                    color: const Color(0xFFFCFCFE),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4.60),
                                                    ),
                                                    shadows: const [
                                                      BoxShadow(
                                                        color: Color(0xFF898A8D),
                                                        blurRadius: 0,
                                                        offset: Offset(0, 1),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 20.19,
                                                top: 8,
                                                child: Text(
                                                  ' ',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22.50,
                                                    fontFamily: 'SF Pro Text',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                    letterSpacing: -0.55,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 282,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 6,
                                        top: 8,
                                        child: Text(
                                          'M',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 244,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'N',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 206,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'B',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 169,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'V',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 131,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'C',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 94,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'X',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 56,
                                top: 108,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'Z',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 319,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 8,
                                        child: Text(
                                          'L',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 281,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'K',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 244,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 8,
                                        child: Text(
                                          'J',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 206,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'H',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 169,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'G',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 131,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 8,
                                        child: Text(
                                          'F',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 94,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'D',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 56,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'S',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 54,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'A',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 337,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'P',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 300,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 7,
                                        top: 8,
                                        child: Text(
                                          'O',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 262,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 13,
                                        top: 8,
                                        child: Text(
                                          'I',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 225,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text(
                                          'U',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'Y',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'T',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 112,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'R',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 75,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 9,
                                        top: 8,
                                        child: Text(
                                          'E',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 37,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 5,
                                        top: 8,
                                        child: Text(
                                          'W',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 32,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 32,
                                          height: 42,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFCFCFE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.60),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0xFF898A8D),
                                                blurRadius: 0,
                                                offset: Offset(0, 1),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 7,
                                        top: 8,
                                        child: Text(
                                          'Q',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.50,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                            letterSpacing: -0.55,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 419,
                child: Container(
                  height: 51,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF5980C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 99,
                top: 486,
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Color(0xFFF5980C),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}