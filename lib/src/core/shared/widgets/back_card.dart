import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  final String senhaCartao;
  final String closeDate;
  final String expirationDate;
  const BackCard(
      {Key? key,
      required this.senhaCartao,
      required this.closeDate,
      required this.expirationDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(25),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.deepPurple],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 1]),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.7, color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: 50,
                // padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text.rich(TextSpan(
                      text: 'Fecha dia: ',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromRGBO(232, 147, 207, 1)),
                      children: [
                        TextSpan(
                          text: closeDate,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white),
                        )
                      ])),
                  Text.rich(TextSpan(
                      text: 'Vence dia: ',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromRGBO(232, 147, 207, 1)),
                      children: [
                        TextSpan(
                          text: expirationDate,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white),
                        )
                      ])),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
