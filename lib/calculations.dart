import 'dart:math';
class Calculatorbrain{
  Calculatorbrain({this.height,this.weight});
  final int height;
  final int weight;
  double bmi;

  String calculateBmi(){
    bmi = weight/ pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(bmi >=25){
      return 'Overweight';
    }
    else if(bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getmoreResult(){
    if(bmi >=25){
      return 'Exercise more and eat good';
    }
    else if(bmi>18.5){
      return 'You have a fit body';
    }
    else{
      return 'Eat,Workout,Gain,Repeat';
    }
  }
}