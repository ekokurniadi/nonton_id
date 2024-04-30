import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: const Text('Sample page'),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Flexible(
              child: SamplePageStateless(),
            ),
            Flexible(
              child: SamplePageStatefull(),
            )
          ],
        ),
      ),
    );
  }
}

class SamplePageStateless extends StatelessWidget {
  const SamplePageStateless({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> number = ValueNotifier(0);
    print('Build dari stateless');
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: number,
          builder: (context,__,_) {
            return Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Number : ${number.value}'),
                ElevatedButton(
                  child: const Text('StatelessWidget'),
                  onPressed: () {
                    number.value++;
                  },
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}

class SamplePageStatefull extends StatefulWidget {
  const SamplePageStatefull({super.key});

  @override
  State<SamplePageStatefull> createState() => _SamplePageStatefullState();
}

class _SamplePageStatefullState extends State<SamplePageStatefull> {
  int counter = 0;

  @override
  void initState() {
    counter = 10;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     print('Build dari statefull');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number : $counter'),
            ElevatedButton(
              child: const Text('StatefullWidget'),
              onPressed: () {
                setState(() {
                  counter++;
                });
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
