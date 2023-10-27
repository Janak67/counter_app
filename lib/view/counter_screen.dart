import 'package:counter_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter App",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(
                  builder: (context, value, child) => Text(
                        "${value.i}",
                        style: const TextStyle(fontSize: 25),
                      )),
              ElevatedButton(onPressed: () {
                CounterProvider cn = context.read<CounterProvider>();
                cn.increment();
              }, child: const Icon(Icons.add)),
              ElevatedButton(onPressed: () {
                CounterProvider cn = context.read<CounterProvider>();
                cn.decrement();
              }, child: const Icon(Icons.remove)),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider cn = context.read<CounterProvider>();
                    cn.x2();
                  },
                  child: const Text(
                    "2x",
                    style: TextStyle(fontSize: 18),
                  )),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider cn = context.read<CounterProvider>();
                    cn.x3();
                  },
                  child: const Text(
                    "3x",
                    style: TextStyle(fontSize: 18),
                  )),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider cn = context.read<CounterProvider>();
                    cn.x4();
                  },
                  child: const Text(
                    "4x",
                    style: TextStyle(fontSize: 18),
                  )),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider cn = context.read<CounterProvider>();
                    cn.x5();
                  },
                  child: const Text(
                    "5x",
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
