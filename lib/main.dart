import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mauves',
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
        splash: Center(child: Splash()),
        splashIconSize: 700.0,
        duration: 1700,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Color(0xffefd1e2),

        nextScreen: FirstRoute()),
  ));
}
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Image.asset('assets/logo.png')),
    );
  }
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xfffabdf1), Colors.white],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Who's using?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage('assets/provider1.png'),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const provider()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(30),
                            )),
                        Container(
                          child: Text('PROVIDER',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.purple.shade900,
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage('assets/cust.png'),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const customer()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(30),
                            )),
                        Container(
                          child: Text('CUSTOMER',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.purple.shade900,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const userguide()),
                    );
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/userguide.png'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('USER GUIDE',
                        style: TextStyle(
                          color: Colors.purple.shade900,
                        ),),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class userguide extends StatefulWidget {
  const userguide({Key? key}) : super(key: key);

  @override
  State<userguide> createState() => _userguideState();
}

class _userguideState extends State<userguide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xfffabdf1), Colors.white],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'USER GUIDE',
                style: TextStyle(
                    color: Colors.purple.shade900,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 70.0,
              ),
              Row(

                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(Icons.check_circle_outline_rounded),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                      child: Text(
                          'Kindly do not abuse the service\nprovider and treat them with\nrespect.',
                        style: TextStyle(
                          color: Colors.purple.shade900,
                        ),))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(Icons.check_circle_outline_rounded),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(child: Text('Be considerate towards the provider',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                    ),))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(Icons.check_circle_outline_rounded),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(child: Text('Communication is key to good service',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                    ),))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(Icons.check_circle_outline_rounded),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                      child: Text(
                          'In case of misuse, future use of the app will be restricted',
                        style: TextStyle(
                          color: Colors.purple.shade900,
                        ),))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(Icons.check_circle_outline_rounded),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(child: Text('Agree to all',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                    ),))
                ],
              ),
              SizedBox(
                height: 37.0,
              ),
              MaterialButton(
                  color: Colors.purple.shade400,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstRoute()),
                    );
                  },
                  child: Text('AGREE AND CONTINUE',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                    ),))
            ],
          ),
        ),
      ),
    );
  }
}

class customer extends StatefulWidget {
  const customer({Key? key}) : super(key: key);

  @override
  State<customer> createState() => _customerState();
}

class _customerState extends State<customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Customer'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xfffabdf1), Colors.white],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  child: Text(
                    "  What service\ndo you require?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.07 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child:   Text('Mentors for\n  budding\n   writers',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                    ),),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.08 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text('Financial\n  Advice',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                                SizedBox(
                                  width: 45.0,
                                )
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.11 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Lunch box\n  service',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.16 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('    Medical\nconsultation',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/legal.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('  Legal\n Advice',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.17 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Small \nScale\nStart\n ups',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                                SizedBox(
                                  width: 45.0,
                                )
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-09 at 12.58.55 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Teaching',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const options()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                  AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.21 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Art and\nTheatre',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class provider extends StatefulWidget {
  const provider({Key? key}) : super(key: key);

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Provider'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xfffabdf1), Colors.white],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text("Do you wish to :",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.purple.shade900,
                ),),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('assets/service.jpeg'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const skills()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                          )),
                      SizedBox(
                        height: 0.0,
                      ),
                      Center(
                        child: Container(
                          child: Text('PROVIDE\nSERVICE',
                            style: TextStyle(
                            color: Colors.purple.shade900,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('assets/WhatsApp Image 2022-05-08 at 10.27.53 PM.jpeg'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const escapades()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                          )),
                      Center(
                        child: Container(
                          child: Text('   HOBBIES\n         &\nESCAPADES',
                            style: TextStyle(
                              color: Colors.purple.shade900,
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class skills extends StatefulWidget {
  const skills({Key? key}) : super(key: key);

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Services'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xfffabdf1), Colors.white],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  child: Text(
                    "What are your \n       skills?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/wallet.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Handling\n Finance',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0

                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/WhatsApp Image 2022-05-08 at 10.27.49 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text('Cooking',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                                SizedBox(
                                  width: 45.0,
                                )
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/comm.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Communi-\n   cation',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/legals.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('    Legal \nKnowledge',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/literary.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('   Literary\nKnowledge',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/creative.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text('Creative\n  Skills',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                                SizedBox(
                                  width: 45.0,
                                )
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/WhatsApp Image 2022-05-08 at 10.29.07 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('   Medical\nKnowledge',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const scheduling()),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/WhatsApp Image 2022-05-09 at 1.37.58 PM.jpeg'),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text('Theatre Skills',
                                  style: TextStyle(
                                    color: Colors.purple.shade900,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0
                                  ),),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class escapades extends StatefulWidget {
  const escapades({Key? key}) : super(key: key);

  @override
  State<escapades> createState() => _escapadesState();
}

class _escapadesState extends State<escapades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Escapades'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xfffabdf1), Colors.white],
            )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text(
                    "Choose your\n  escapade:",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-09 at 2.06.42 PM.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('Pet a Dog',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-08 at 10.29.49 PM.jpeg'),
                                    radius:30.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('Book Clubs',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                  SizedBox(
                                    width: 45.0,
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-08 at 10.29.48 PM.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('Game\nNights',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/cookoff.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('Cook offs',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-08 at 10.27.57 PM.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('Open Mics',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.00 PM.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text('Mentoring\n Sessions',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                  SizedBox(
                                    width: 45.0,
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/WhatsApp Image 2022-05-08 at 10.28.02 PM.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('     Art\nContests',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                          SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const booking()),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/others.jpeg'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(' Others',
                                    style: TextStyle(
                                      color: Colors.purple.shade900,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0
                                    ),),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Scheduling'),
    actions: [
    IconButton(
    icon: Icon(Icons.help),
    onPressed: () {},
    ),
    ],
    ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Color(0xfffabdf1), Colors.white],
    )),
    child: Center(
      child: Column(

        children: [
          SizedBox(
            height: 120.0,
          ),
          Text('Scheduling\nescapades...',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
              color: Colors.purple.shade900,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('SLOTS AVAILABLE THIS MONTH:',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              color: Colors.purple.shade900,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              MaterialButton(
                onPressed: (){},
                child: CircleAvatar(
                  backgroundColor: Colors.purple.shade400,
                 child: Text('12',
                   style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 25.0,
                     color: Colors.purple.shade900,
                   ),
                 ),
                  radius: 30.0,
                ),
              ),
              MaterialButton(
                onPressed: (){},
                child: CircleAvatar(
                  backgroundColor: Colors.purple.shade400,
                  child: Text('13',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                  radius: 30.0,
                ),
              ),
              MaterialButton(
                onPressed: (){},
                child: CircleAvatar(
                  backgroundColor: Colors.purple.shade400,
                  child: Text('14',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                  radius: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70.0,
          ),
          Text('DETAILS',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
              color: Colors.purple.shade900,
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: Colors.purple.shade400,
                minimumSize: const Size(200, 50),
                maximumSize: const Size(200, 50),

              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const booke()));
              },
              child: Text('CONFIRM',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: Colors.purple.shade900,
                ),
              ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}

class scheduling extends StatefulWidget {
  const scheduling({Key? key}) : super(key: key);

  @override
  State<scheduling> createState() => _schedulingState();
}

class _schedulingState extends State<scheduling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Scheduling'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xfffabdf1), Colors.white],
            )),
        child: Center(
          child: Column(

            children: [
              SizedBox(
                height: 120.0,
              ),
              Text('Scheduling\n  service...',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                  color: Colors.purple.shade900,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text('SLOTS AVAILABLE THIS MONTH:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.purple.shade900,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  MaterialButton(
                    onPressed: (){},
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade400,
                      child: Text('12',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.0,
                          color: Colors.purple.shade900,
                        ),
                      ),
                      radius: 30.0,
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade400,
                      child: Text('13',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.0,
                          color: Colors.purple.shade900,
                        ),
                      ),
                      radius: 30.0,
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade400,
                      child: Text('14',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.0,
                          color: Colors.purple.shade900,
                        ),
                      ),
                      radius: 30.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.0,
              ),
              Text('DETAILS',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  color: Colors.purple.shade900,
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.purple.shade400,
                  minimumSize: const Size(200, 50),
                  maximumSize: const Size(200, 50),

                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const books()));
                },
                child: Text('CONFIRM',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Colors.purple.shade900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class booke extends StatefulWidget {
  const booke({Key? key}) : super(key: key);

  @override
  State<booke> createState() => _bookeState();
}

class _bookeState extends State<booke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Booking'),
    actions: [
    IconButton(
    icon: Icon(Icons.help),
    onPressed: () {},
    ),
    ],
    ),
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Color(0xfffabdf1), Colors.white],
    )),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_sharp,
            color: Colors.purple.shade400,
            size: 120.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('   ACTIVITY\nCONFIRMED',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w400,
            color: Colors.purple.shade900,
          ),
          ),
          SizedBox(
            height: 200.0,
          ),
          ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.purple.shade400,
              minimumSize: const Size(200, 50),
              maximumSize: const Size(200, 50),

            ),
            onPressed: () {},
            child: Text('FEEDBACK',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: Colors.purple.shade900,
              ),
            ),
          ),
        ],
      ),
    )
    ),
    );
  }
}

class books extends StatefulWidget {
  const books({Key? key}) : super(key: key);

  @override
  State<books> createState() => _booksState();
}

class _booksState extends State<books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Booking'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffabdf1), Colors.white],
              )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_sharp,
                  color: Colors.purple.shade400,
                  size: 120.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('   SERVICE\nCONFIRMED',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.purple.shade900,
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade400,
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),

                  ),
                  onPressed: () {},
                  child: Text('FEEDBACK',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade400,
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),

                  ),
                  onPressed: () {},
                  child: Text('REPORT',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}


class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Service Providers'),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xfffabdf1), Colors.white],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  "Pick your\n Service\nProvider:",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                    color: Colors.purple.shade900,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const scheduling()),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/sumati.png'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mrs. Sumati Narayan',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                  Text('7 km away\nAastha Old Age Home',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                ],
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 40.0,
                      ),
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const scheduling()),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/Mr. Venkatesh Goyle.png'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mr. Ventakesh Goyle',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                  Text('6.5 km away\nJodhana Vradashram',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                ],
                              ),
                              SizedBox(
                                width: 45.0,
                              )
                            ],
                          )),
                      SizedBox(
                        height: 40.0,
                      ),
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const scheduling()),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/bhavesh.png'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mr. Bhavesh Chatterjee',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                  Text('7 km away\nAastha Old Age Home',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple.shade900,
                                    ),),
                                ],
                              ),
                            ],
                          )),

                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
