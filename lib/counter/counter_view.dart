import 'package:flutter/material.dart';
import 'package:flutter_application_3/counter/counter_cubit.dart';
import 'package:flutter_application_3/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, State) {
            return Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: const Center(
                      child: Text(
                    'BMI Calculator App',
                    style: TextStyle(color: Colors.white),
                  ))),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Weight',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                context.read<CounterCubit>().weight.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      context.read<CounterCubit>().addweight();
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      context
                                          .read<CounterCubit>()
                                          .removeweight();
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 300,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Height',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                context.read<CounterCubit>().height.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      context.read<CounterCubit>().addheight();
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      context
                                          .read<CounterCubit>()
                                          .removeheight();
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {
                          context.read<CounterCubit>().calc();
                        },
                        child: const Text(
                          'Calculate',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    context.read<CounterCubit>().bim.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    context
                        .read<CounterCubit>()
                        .states(context.read<CounterCubit>().bim),
                    style: const TextStyle(color: Colors.green, fontSize: 25),
                  )
                ],
              ),
            );
          },
        ));
  }
}
