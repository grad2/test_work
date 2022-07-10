import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled9/domain/entity/counters.dart';
import 'package:untitled9/presentation/bloc/home_page_bloc.dart';
import 'package:untitled9/presentation/model/count.dart';

import 'home_page_two.dart';

class HomePageOne extends StatelessWidget {

  static const String routeName = 'one';

  const HomePageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Provider<HomePageBloc>(
      create: (BuildContext context) => HomePageBloc(
    ),
    dispose: (context, block) => block.dispose(),
      child: Consumer<HomePageBloc>(
          builder: (context, block, child) {
            return Scaffold(
              appBar: AppBar(
                leading: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(HomePageTwo.routeName, arguments: CountersArguments(counters: block.getCounters));
                  },
                  child: const Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                title: const Text("Flutter Demo Home Page"),
                backgroundColor: Colors.blue,
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
                      ],
                    ),
                  );
                }
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => block.addCount(Count.one),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            );
        }
      ),
    );
  }
}
