import 'package:flutter/material.dart';
import 'package:ring/src/color.dart';

final RingColorScheme ringGradients = RingColorScheme(ringGradients: [
  [Colors.red, Colors.yellow],
  [Colors.yellow, Colors.green],
  [Colors.green, Colors.blue],
]);

final RingColorScheme ringColors = RingColorScheme(ringColors: [
  Colors.red,
  Colors.green,
  Colors.blue,
], intensity: 20);

final RingColorScheme ringGradient = RingColorScheme(ringGradient: [
  Colors.red[900],
  Colors.blue[300],
]);

final RingColorScheme ringColor = RingColorScheme(
  ringColor: Colors.red,
  intensity: 20,
);

const firstRingPercent = 90.0;
const secondRingPercent = 180.0;
const ringRadius = 50.0;
const width = 15.0;

const gradientsChild = Center(child: Text('Ring \n Gradients',textAlign: TextAlign.center,));
const colorsChild = Center(child: Text('Ring Colors'));
const gradientChild = Center(child: Text('Ring Gradient'));
const colorChild = Center(child: Text('Ring Color'));
