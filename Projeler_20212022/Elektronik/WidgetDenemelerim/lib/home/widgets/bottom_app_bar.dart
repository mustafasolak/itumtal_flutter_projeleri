import 'package:flutter/material.dart';

Widget buildBottomAppBar() => BottomAppBar(
      color: Colors.blue,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shop,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
