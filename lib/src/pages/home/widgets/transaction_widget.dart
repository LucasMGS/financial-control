import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      margin: const EdgeInsets.all(10),
      // color: Theme.of(context).colorScheme.tertiary,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Spotify music',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'Sun, 10 may',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const Spacer(),
            const Padding(
                padding: EdgeInsets.only(right: 10), child: Text('\$77,99'))
          ],
        ),
      ),
    );
  }
}
