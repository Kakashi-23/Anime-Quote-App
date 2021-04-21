import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  List quotedata;

  HomeBody ({this.quotedata});
  @override
  _HomeBodyState createState() => _HomeBodyState(quotedata);

}

class _HomeBodyState extends State<HomeBody> {
  List quoteData;
  _HomeBodyState(this.quoteData);

  // TODO(Function to show data from list)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
            itemCount:quoteData.length
            ,itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  elevation: 2.0,
                  child: Column(
                 //   mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Wrap(
                        children:[
                          SizedBox(width: 5.0,),
                          Text("Anime Name -",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),

                        ),
                         SizedBox(width: 8.0,),
                         // show anime name
                         Text(
                           "${quoteData[index]['anime']}",
                           style: TextStyle(
                             fontSize: 16.0,
                             color: Colors.blue[600],
                           ),
                         ),
                          SizedBox(width:0.0),
                        ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Wrap(

                        children: [
                          // show the character
                          SizedBox(width: 5.0,),
                          Text("Character -",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8.0,),
                          Text(
                            "${quoteData[index]['character']}",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Wrap(
                        children: [
                          // show the character
                          SizedBox(width: 5.0,),
                          Text( "${quoteData[index]['quote']}",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[600],
                            ),
                          ),
                          SizedBox(width: 8.0,)
                        ],
                      ),
                    )
                  ],
                  ),
                ),
              );
        })
    );
  }
}
