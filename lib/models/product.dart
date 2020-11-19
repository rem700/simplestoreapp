import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'military bag',
    price: 50,
    size: 10,
    description: 'perfect bag',
    image: 'assets/images/bag.jpg',
    color: Colors.lightBlueAccent,
  ),
  Product(
    id: 2,
    title: 'military bag',
    price: 55,
    size: 12,
    description: 'perfect bag',
    image: '',
    color: Colors.brown,
  ),
];