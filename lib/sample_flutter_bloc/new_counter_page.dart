import 'package:flutter/material.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widgets/button_widget.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widgets/result_widget..dart';

class NewCounterPage extends StatefulWidget {
  const NewCounterPage({super.key});

  @override
  State<NewCounterPage> createState() => _NewCounterPageState();
}

class _NewCounterPageState extends State<NewCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Counter Page', style: TextStyle(color: Colors.white)),
        elevation: 4,
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Value is : '),
            SizedBox(
              height: 16,
            ),
            SizedBox(height: 16),
            ResultWidget(),
            SizedBox(height: 16),
            ButtonWidget()
          ],
        ),
      ),
    );
  }
}


