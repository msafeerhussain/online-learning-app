import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<String> wishlistItems = [
    'Flutter Course',
    'Python Course',
    'React Native Course',
    'JavaScript Course',
    'HTML Course',
  ];

  void removeItem(int index) {
    setState(() {
      wishlistItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF674AEF),
          centerTitle: true,
          title: Text(
            'Wishlist',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))),
      body: wishlistItems.isEmpty
          ? Center(
              child: Text(
                'No items in your wishlist!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xFF674AEF),
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(
                      wishlistItems[index],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      color: Colors.red,
                      onPressed: () => removeItem(index),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
