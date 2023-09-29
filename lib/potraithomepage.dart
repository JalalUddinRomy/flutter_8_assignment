import 'package:flutter/material.dart';

class PotraitHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Profile"),
  ),
  body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          height: 380,
          child: ClipOval(
        child: Image.network("https://cdn.britannica.com/41/119041-050-8B84B093/goat.jpg",fit: BoxFit.cover,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("Lionel Messi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
                Text("Messi relocated to Spain from Argentina aged 13 to join Barcelona, for whom he made his competitive debut aged 17 in October 2004")
              ],
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
            child: Container(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 12,
              itemBuilder: (BuildContext context,int index){
            return Card(
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
              fit: BoxFit.cover,),
            );
              }),
        ))
      ],
    ),
  ),
);
  }

}