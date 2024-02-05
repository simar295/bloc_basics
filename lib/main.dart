import 'package:bloc_basics/app_blocs.dart';
import 'package:bloc_basics/app_events.dart';
import 'package:bloc_basics/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => appblocs(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: BlocBuilder<appblocs, appstates>(
            //injecting blocbuilder in UI to use bloc

            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${BlocProvider.of<appblocs>(context).state.counter}', //used blocprovider to fetch value
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => BlocProvider.of<appblocs>(context)
                  .add(incrementevent()), // calling the event from UI
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => // calling the event from UI
                  BlocProvider.of<appblocs>(context).add(decrementevent()),
              tooltip: 'decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
