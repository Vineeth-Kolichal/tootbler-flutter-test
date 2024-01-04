
import 'package:flutter/material.dart';

class TitleAndDataContainer extends StatelessWidget {
  const TitleAndDataContainer({
    super.key,
    required this.title,
    required this.data,
  });
  final String title;
  final String? data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 242, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title:',
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.grey),
            ),
            Text(
              "$data",
              style: theme.textTheme.bodyLarge!.copyWith(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
