import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled9/domain/entity/counters.dart';
import 'package:untitled9/presentation/bloc/home_page_bloc.dart';
import 'package:untitled9/presentation/model/count.dart';

import 'home_page_one.dart';

class HomePageThree extends StatelessWidget {

  static const String routeName = 'three';

  const HomePageThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CountersArguments arguments = ModalRoute.of(context)?.settings.arguments as CountersArguments;

    return Provider<HomePageBloc>(
      create: (BuildContext context) => HomePageBloc(
          count: arguments.counters
      ),
      dispose: (context, block) => block.dispose(),
      child: Consumer<HomePageBloc>(
          builder: (context, block, child) {
            return Scaffold(
              appBar: AppBar(
                leading: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(HomePageOne.routeName);
                  },
                  child: const Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                title: const Text("Flutter Demo Home Page"),
                backgroundColor: Colors.green,
              ),
              body: StreamBuilder<Counters>(
                  stream: block.watchCounters,
                  builder: (context, snapshot) {
                    if(snapshot.data == null){
                      return const SizedBox.shrink();
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            snapshot.data!.one.toString(),
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            snapshot.data!.two.toString(),
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            snapshot.data!.three.toString(),
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    );
                  }
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () => block.addCount(Count.one),
                    heroTag: "btn1",
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () => block.addCount(Count.two),
                    heroTag: "btn2",
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () => block.addCount(Count.three),
                    heroTag: "btn3",
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              ), // This trailing comma makes auto-formatting nicer for build methods.
            );
          }
      ),
    );
  }
}
