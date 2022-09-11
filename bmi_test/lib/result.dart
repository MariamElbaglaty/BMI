import 'package:flutter/material.dart';
class result extends StatefulWidget {
 final String bmi_result;
  final String Result;
  final String feedback;
  result(this.bmi_result,this.Result,this.feedback){}

  

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          elevation: 0,
         title: Text('Your Result',
         style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30
         ),
         
         
         
         ),
         backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
          children: [
                 Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1d1e33),
                      
                 ),
        child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                 children: [
                  Text(widget.Result,
                   style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 25
          
                  )
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.bmi_result,
          
                    
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 60,)

           ),
        )  ,      
        
        
        Text(widget.feedback,
        
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,)

        )
        
        
        
           ], )
        

        
        
        
       ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, 
          child: Text('RE-CALCULATE' ,
           style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,

       ),
          ),
         style:ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 232, 15, 87),
        minimumSize: Size(double.infinity, 50)

         )

          )],
          ),
        ),
      ),
    );
  }
}