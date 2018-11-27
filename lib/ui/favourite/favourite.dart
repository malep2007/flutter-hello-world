import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget{
  @override
    _FavouriteWidgetState createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget>{
  bool _isFavourited = true;
  int _favouriteCount = 41;

  void _toggleFavourite(){
    setState(() {
          if(_isFavourited){
            _favouriteCount -= 1;
            _isFavourited = false;
          }
          else{
            _favouriteCount += 1;
            _isFavourited = true;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: _isFavourited ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFavourite,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favouriteCount'),
          ),
        ),
      ],
    );
  }
}

