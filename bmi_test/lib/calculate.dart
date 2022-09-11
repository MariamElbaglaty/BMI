import 'dart:math';

class Calculate{
final int height;
final int weight;
Calculate(this.height,this.weight){}
late double bmi;
String calculateBMI()

{
 bmi= weight / pow((height/100), 2);
  return bmi.toString();
}

String getResult()
{
  if (bmi>=25)
  {
    return'Overwight';
  }
 else if (bmi>18.5)
{
  return'Normal';
}
else 
return'underweight';

}

String feedback()
{
   if (bmi>=25)
  {
    return'You are higher than normal body weight';
  }
 else if (bmi>18.5)
{
  return' You have a normal body weight';
}
else 
return'You are underweight';

}






}