import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController  = TextEditingController();
  final _idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_vc_zego'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              TextFormField(controller: _nameController,),
              SizedBox(height: 50,),
              Text('Id'),
              TextFormField(controller: _idController,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CallPage(
                  callID: _idController.text.toString(), uName: _nameController.text.toString())));
        },
        child: Text('Call'),
      ),
    );
  }
}


class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID,required this.uName})
      : super(key: key);
  final String callID;
  final String uName;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: "", // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: '', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: uName,
      userName: uName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
    );
  }
}
