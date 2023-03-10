import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37d461),
      ),
      body: Center(
        child: Container(
            child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context, builder: (context) => const FeedBackDialog());
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xff37d461)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27))),
          ),
          child: const Text(
            "Send Feedback",
            style: TextStyle(fontSize: 24),
          ),
        )),
      ),
    );
  }
}

class FeedBackDialog extends StatefulWidget {
  const FeedBackDialog({Key? key}) : super(key: key);

  @override
  State<FeedBackDialog> createState() => _FeedBackDialogState();
}

class _FeedBackDialogState extends State<FeedBackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff37d461),
      content: Form(
        key: _formKey,
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: 'Enter Your Feedback Here',
            hintStyle: const TextStyle(color: Colors.white),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
          /*minLines: 5,
          maxLength: 10,*/
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'please enter a value';
            } else {
              return null;
            }
          },
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            )),
        TextButton(
            onPressed: () async {},
            child: const Text("Send", style: TextStyle(color: Colors.white))),
      ],
    );
  }
}
