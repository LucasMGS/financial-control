import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  final String closeDate;
  final String expirationDate;
  const BackCard({
    Key? key,
    required this.closeDate,
    required this.expirationDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.2, 1]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Container(
                  height: 60,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text.rich(TextSpan(
                          text: 'Fecha dia: ',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color: const Color.fromRGBO(232, 147, 207, 1),
                              ),
                          children: [
                            TextSpan(
                              text: closeDate,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.white),
                            )
                          ])),
                    ),
                    const SizedBox(width: 5),
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: 'Vence dia: ',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color: const Color.fromRGBO(232, 147, 207, 1),
                              ),
                          children: [
                            TextSpan(
                              text: expirationDate,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
