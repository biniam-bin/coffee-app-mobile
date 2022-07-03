import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        bottom: 20,
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black54,
        ),
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  "assets/images/img2.jpg",
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Latte",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    "with milk",
                    style: TextStyle(color: Colors.grey[700], fontSize: 18),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$250.00", style: TextStyle(fontSize: 18),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.orange[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
