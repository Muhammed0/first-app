import 'package:sky_engine/ui/ui.dart';
import 'package:flutter/material.dart';
void main(){
    runApp(MyApp());
}
class MyApp extends StatelessWidget{
    Widget build(BuildContext context){
        return MaterialApp(
            debugShowCheckedModeBanner:false,
            home:HomeScreen(),
        );
    }
}
class HomeScreen extends StatelessWidget{

    Widget _buildHeader(String title,String secondTitle,String startext){
        return Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children:<Widget>[
                        Expanded(
                            flex:1,
                            child:Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:<Widget>[
                                Text(
                                    title,
                                    style:TextStyle(
                                        fontWeight:FontWeight.bold,
                                        fontSize:24
                                    )
                                ),
                                Text(
                                    secondTitle,
                                ),
                                ]
                            )
                        ),
                        Icon(
                            Icons.star,
                            color:Colors.red,
                        ),
                        Text(startext),
                    ],
                );
    }
    Widget _buildIconWithText({IconData icon,String text}){
        return Column(
            children:<Widget>[
                Icon(
                    icon,
                    color:Colors.blue,
                ),
                SizedBox(height:18),
                Text(
                    text.toUpperCase(),
                    style:TextStyle(
                            color:Colors.blue,
                        )
                ),
            ],
        );
    }
    String getDescription(){
        String desc= """  The lake is some 479 km (298 mi) long and 16 km (9.9 mi) across at its widest point, which is near the Tropic of Cancer.
            It covers a total surface area of 5,250 km2 (2,030 sq mi) and has a storage capacity of some 132 km3 (32 cu mi) of water.
            The lake was created as a result of the construction of the Aswan High Dam across the waters of the Nile between 1958 and 1970.
            The lake is named after Gamal Abdel Nasser, one of the leaders of the Egyptian Revolution of 1952,
            and the second President of Egypt, who initiated the High Dam project.
            It was President Anwar Sadat who inaugurated the lake and dam in 1970.""" ;
        return desc.replaceAll("\n","");
    }
    Widget build(BuildContext context){
        double screenWidth=MediaQuery.of(context).size.width;
        double screenHeight=MediaQuery.of(context).size.height;
        return Scaffold(
            body:SingleChildScrollView(
            child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:<Widget>[
                    Image.network(
                        'https://image.freepik.com/free-photo/nasser-lake-egypt-africa_134785-5300.jpg',
                        fit:BoxFit.cover,
                        height:screenHeight/2,
                        width:screenWidth,
                    ),
                    Padding(
                        padding:EdgeInsets.all(screenWidth/20),
                        child:_buildHeader('Nasser Lake','One of the largest man-made lakes in the world','41'),
                    ),
                    Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
                            _buildIconWithText(icon:Icons.phone,text:'Call'),
                            _buildIconWithText(icon:Icons.send,text:'Route'),
                            _buildIconWithText(icon:Icons.share,text:'Share'),
                        ]
                    ),
                    Padding(
                        padding:EdgeInsets.all(screenWidth/20),
                    child:Text(
                            getDescription(),
                            textAlign: TextAlign.justify
                        )
                    ),

                ],
            )),
        );
    }
}