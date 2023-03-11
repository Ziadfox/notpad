import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class info {
  final String text;
  final String date;
  final Color contcolor;

  info(
  this.text,
   this.date,
    this.contcolor);
}
class notpad extends StatelessWidget {
  List <info>model=[
    info(
     "Todayes grocery list",
     "june 26,2022,05:00 PM", 
     Colors.green[200]!
     ),
     info(
     "Rich dad pore dad quotes",
     "june 26,2022,06:00 PM", 
     Colors.yellow[200]!
     )

  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton:FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      backgroundColor: Colors.amber,
      ),
      body:SafeArea(child:
      Padding(
        padding: const EdgeInsets.only(top: 50,bottom:20,right: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notepad",
              style: TextStyle(
                fontSize:30,
              ),
              ),
              SizedBox(height: 20,),
              Container(
                height:30,
                child: TextFormField(
                  keyboardType:TextInputType.text,
                decoration:InputDecoration(
                  labelText:"search note",
              
                  prefixIcon: Icon(Icons.search),prefixIconColor:Colors.amber[100],
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.yellow,
                      width: 2,)
                  )
                  
                ),
                ),
              ),
              SizedBox(height: 20,),
           Expanded(
             child: ListView.separated(itemBuilder:(context,index)=>buildItem(model[index]) ,
                separatorBuilder: (context,index)=>SizedBox(height: 15,), itemCount:2),
           )  
          ],
        ),
      ) 
      )
    );
  }
  Widget buildItem(info us)=>Container(
    decoration: BoxDecoration(
      color: us.contcolor,
      borderRadius: BorderRadius.circular(20)
    ),
    
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("${us.text}",
        style:TextStyle(
          fontSize:15,
          fontWeight: FontWeight.bold
        ),
        ),
         Text("${us.date}"),
    
      ]),
    ),
  );
}