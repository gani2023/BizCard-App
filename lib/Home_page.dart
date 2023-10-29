import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Biz Card',
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 10.0,
      ),
      backgroundColor: Colors.black,

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        )
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.pinkAccent.shade200
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('TIGER BABY',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.9,
            color: Colors.white
          ),),
          Text('Tiger21@gmail.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text('X: @ganiagarwal')
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(width: 1.2, color: Colors.redAccent),
        image: DecorationImage(
          image: NetworkImage( "https://picsum.photos/id/237/300/300"),
              fit: BoxFit.cover,
        )
      ),
    );
  }
}
