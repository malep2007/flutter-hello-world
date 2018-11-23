import 'package:flutter/material.dart';
import 'ui/product/product.dart';

// void main(List<String> args) {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "My App",
//       home: TutorialHome(),
//     )
//   );
// }

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Shopping App",
    home: ShoppingList(
      products: <Product>[
        Product(name: "Eggs"),
        Product(name: "Flour"),
        Product(name: "Chocolate chipts"),
      ],
    )
  ));
}

class MyAppBar extends StatelessWidget{
  MyAppBar({this.title}); //constructor of sorts for this class

  final Widget title;
  @override
    Widget build(BuildContext context) {
      return Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue[500]
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu), 
              tooltip: "Navigation menu",
              onPressed: null, // null disables the button
            ),
            Expanded(
              child: title,
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
      );
    }
}

class MyScaffold extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Material(
        child: Column(
          children: <Widget>[
            MyAppBar(
              title: Text(
                'Example title',
                style: Theme.of(context).primaryTextTheme.title,
              ),
            ),
            Expanded(
              child: Center(
                child: Text("Hello World"),
              ),
            ),
          ],
        ),
      );
    }
}

class TutorialHome extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          title: Text("Example Title"),
          actions: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              tooltip: "Search",
            ),
          ],
        ),
        body: Center(
          child: Text("Hello World"),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null,
        ),
      );
    }
}

class MyButton extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          print("MyButton was tapped!");
        },
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500],
          ),
          child: Center(
            child: Text("Engage"),
          ),
        ),
      );
    }
}