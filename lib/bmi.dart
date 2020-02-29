import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'main.dart';

double calculateBMI(String h, String w) {
  print("Welcome to the BMI calculator!");

  print("Please enter your height in inches: ");
  double height = double.parse(h);

  print("Please enter your weight in pounds: ");
  double weight = double.parse(w);

  double bmi = (703 * weight) / pow(height, 2); //calculates bmi

  bmi =
      double.parse((bmi).toStringAsFixed(2)); //rounds bmi to two decimal places

  print("Your BMI is $bmi.");
}
