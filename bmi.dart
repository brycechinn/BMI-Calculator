import 'dart:io';
import 'dart:math';

void main()
{
    //hello world
    //double height;
    //double weight;

    print("Welcome to the BMI calculator!");

    print("Please enter your height in inches: ");
    double height = double.parse(stdin.readLineSync());

    print("Please enter your weight in pounds: ");
    double weight = double.parse(stdin.readLineSync());
    
    double bmi = (703 * weight) / pow(height, 2); //calculates bmi

    bmi = double.parse((bmi).toStringAsFixed(2)); //rounds bmi to two decimal places
    
    print("Your BMI is $bmi.");
}