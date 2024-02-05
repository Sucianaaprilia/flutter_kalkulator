import 'package:flutter/material.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<List<String>> listLayoutNumbers = [
      ['AC', 'Del', '%'],
      ['7', '8', '9', 'x'],
      ['4', '5', '6', '+'],
      ['1', '2', '3', '-'],
      ['0', '.', '='],
    ];

    final Map charColors = {
      'AC': Colors.grey.shade200,
      'Del': Colors.grey.shade200,
      '.': Colors.grey.shade200,
      '0': Colors.grey.shade200,
      '%': Colors.orange,
      'x': Colors.orange,
      '+': Colors.orange,
      '-': Colors.orange,
      '=': Colors.orange,
    };
    // return Scaffold(
    //   body: Text('data'),
    // );
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  Text(
                    '123',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '1000',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 32, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  for (final row in listLayoutNumbers)
                    Expanded(
                      child: Row(
                        children: [
                          for (final char in row)
                            Expanded(
                              flex: ['AC', '0'].contains(char) ? 2 : 1,
                              child: Material(
                                color: charColors.containsKey(char)
                                    ? charColors[char]
                                    : Colors.grey.shade200,
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      char,
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
