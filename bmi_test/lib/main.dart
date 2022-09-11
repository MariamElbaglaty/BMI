import 'package:bmi_test/calculate.dart';
import 'package:bmi_test/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

     
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Home()
     
    );}}
     
     class Home extends StatefulWidget {
       const Home({ Key? key }) : super(key: key);
     
       @override
       State<Home> createState() => _HomeState();
     }
     
     class _HomeState extends State<Home> {
       int val=150;
       int weight=50;
       int age = 30;
       String gender='';
       @override
       Widget build(BuildContext context) {
         return 
     
     
     Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
      title: Text('BMI calculator',
          style: TextStyle(
            color: Colors.white,
            
          ),
       
      ),
      backgroundColor:  Colors.transparent,
      elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      
     body: Padding(
      padding: EdgeInsets.all(8),
        child: Column(
          
          
        children: [
          Expanded(
            child: Row(
            children: [
             Expanded(
              child: GestureDetector(
                onTap: () {
                setState(() {
                  gender='Male';
                });
                },
                child: Container(
              
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color:gender== 'Male' ? Colors.transparent :Color(0xff1d1e33)
                    
              
              
              
                   ),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 70,
              
              
                      ),
                    ),
                    Text('Male',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 20
                    ),
                    
                    
                    
                    
                    )
                    ]),
                ),
              ) ),
             
             SizedBox(
                     width: 10,
                     
             ),






               Expanded(
              child: GestureDetector(
                onTap: (() {
                   setState(() {
                  gender='female';
                });
                }),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color:gender== 'female' ? Colors.transparent :Color(0xff1d1e33)
                    ,
                   ),
              
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 70,
              
              
                      ),
                    ),
                    Text('Female',
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 20
                    ),
                    
                    
                    
                    
                    )
                    ]),
                ),
              ) )
          


            ],
            )
          ),
         
          
          Expanded(
            child: Row(
              children: [
                 Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Color(0xff1d1e33),
                 ),
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                    style: TextStyle(
                       color: Colors.white,
                     fontSize: 20,


                    ),
                    
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                         Text(val.toString(),
                         style: TextStyle(
                       color: Colors.white,
                     fontSize: 60,
                      fontWeight: FontWeight.bold

                    ),
                    
                         
                         ),
                           Text('cm',
                         style: TextStyle(
                       color: Colors.white,
                     fontSize: 20,
                      
                         ))
                      ],
                    ),
                   Slider(value: val.toDouble(), 
                   max: 220,
                   min:120,
                   thumbColor: Color.fromARGB(255, 226, 4, 78),
                   inactiveColor: Colors.white,
                   activeColor:Color.fromARGB(255, 226, 4, 78),
                   onChanged: (v){
                    setState(() {
                       val=v.toInt();
                    });
                       
                   })
                  ],
                 ),
              ) 
              )
              ],
            )
            ),

           Expanded(
            child: Row(
            children: [
             Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Color(0xff1d1e33),

                 ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('WEIGHT',
                       style: TextStyle(
                       color: Colors.white,
                     fontSize: 20,

                    ),
                    
                    
                    ),
                    Text(weight.toString(),
                         style: TextStyle(
                       color: Colors.white,
                     fontSize: 60,
                      fontWeight: FontWeight.bold

                    ),
                    
                         
                         ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                       
                          
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                                  
                                   child: CircleAvatar(
                                    backgroundColor: Colors.grey[600],
                                    radius: 25,
                                   child: Icon(
                                   
                                    FontAwesomeIcons.minus,
                                    color: Colors.white, 
                                    size: 20,
                                    
                                                             ),
                                   ),
                                 ),
                               GestureDetector(
                                 onTap: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                                 child: CircleAvatar(
                                  backgroundColor: Colors.grey[600],
                                    radius: 25,
                                   child: Icon(
                                    FontAwesomeIcons.plus,
                                  color: Colors.white, 
                                  size: 20,)
                                  
                                 ),
                               )
                               
                             ],
                           ),
                         


                   




                  ]),
              ) ),
              SizedBox(
                       width: 10,
              ),
               Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Color(0xff1d1e33),
                 ),

                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('AGE',
                       style: TextStyle(
                       color: Colors.white,
                     fontSize: 20,

                    ),
                    
                    
                    ),
                    Text(age.toString(),
                         style: TextStyle(
                       color: Colors.white,
                     fontSize: 60,
                      fontWeight: FontWeight.bold

                    ),
                    
                         
                         ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                       
                          
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                     age--;
                                    });
                                  }),
                                  
                                   child: CircleAvatar(
                                    backgroundColor: Colors.grey[600],
                                    radius: 25,
                                   child: Icon(
                                   
                                    FontAwesomeIcons.minus,
                                    color: Colors.white, 
                                    size: 20,
                                    
                                                             ),
                                   ),
                                 ),
                               GestureDetector(
                                 onTap: (() {
                                    setState(() {
                                     age++;
                                    });
                                  }),
                                 child: CircleAvatar(
                                  backgroundColor: Colors.grey[600],
                                    radius: 25,
                                   child: Icon(
                                    FontAwesomeIcons.plus,
                                  color: Colors.white, 
                                  size: 20,)
                                  
                                 ),
                               )
                               
                             ],
                           ),
                         


                   




                  ]),
                         
              ) )



        ]),





     ),

     ElevatedButton(
      onPressed:(){
        Calculate cal = Calculate(val, weight);
        Navigator.push(context,
         MaterialPageRoute(builder: ((context) => result(
          cal.calculateBMI(),
          cal.getResult(),
          cal.feedback()
         ))));
        





      },
       child: Text('CALCULATE',
       
       style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,

       ),
       
       
       ),
       style:ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 232, 15, 87),
        minimumSize: Size(double.infinity, 50)
       ) ,
       )






    ] ),








    ));
    }
}
