import 'package:flutter/material.dart';

class EcommerceItems extends StatelessWidget {
  const EcommerceItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
                itemCount: 40,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.greenAccent, width: 2)),
                    child: Text('Category $i'),
                  );
                }),
          )
        ],
      ),
    );
  }
}
