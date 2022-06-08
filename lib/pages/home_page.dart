import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static const id="home_id";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkboxValue=false;
  bool checkboxValue1=false;
  bool checkboxValue2=false;
  bool checkboxValue3=false;
  bool checkboxValue4=false;
  bool checkboxValue5=false;
  bool checkboxValue6=false;
  bool value=false;
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            SizedBox(width: 20,),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.black,
                  width:MediaQuery.of(context).size.width*0.04,
                  height:MediaQuery.of(context).size.height*0.015,
                ),
                SizedBox(height: 5,),
                Container(
                  color: Colors.green.shade400,
                  width:MediaQuery.of(context).size.width*0.04,
                  height:MediaQuery.of(context).size.height*0.015,
                ),
              ],
            ),
            SizedBox(width: 5,),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.green.shade400,
                  width:MediaQuery.of(context).size.width*0.04,
                  height:MediaQuery.of(context).size.height*0.015,
                ),
                SizedBox(height: 5,),
                Container(
                  color: Colors.black,
                  width:MediaQuery.of(context).size.width*0.04,
                  height:MediaQuery.of(context).size.height*0.015,
                ),
              ],
            ),
          ],
        ),
        leadingWidth: 80,
        centerTitle: false,
        title: Text("My Task",style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.w700),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded,color: Colors.black,size: 32,)),
          SizedBox(width: 15,)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("What's ",style: TextStyle(color: Colors.green.shade400,fontSize: 23,fontWeight: FontWeight.w600),),
                Text("in ",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w600),),
                Text("your ",style: TextStyle(color: Colors.green.shade400,fontSize: 23,fontWeight: FontWeight.w600),),
                Text("mind ",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w600),),
                Text("?",style: TextStyle(color: Colors.green.shade400,fontSize: 23,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
             cont(),
             cont(),
             cont(),
             cont(),
             cont(),
             cont(),
             cont(),
             cont(),
            ],
          ),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
        currentIndex: _index,
        onTap:(index){
          setState((){
            _index=index;
          });

        },
        selectedItemColor: Colors.green.shade400,
        unselectedItemColor:Colors.black,
      ),


      floatingActionButton: SizedBox(
        width: 120,
        height: 80,
        child:FloatingActionButton(
          backgroundColor: Colors.green.shade400,
          child: Icon(Icons.add,size: 50,color: Colors.white,),
          onPressed: (){},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget cont(){
    return Container(
      padding: const EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.12,
      decoration:  BoxDecoration(
        color: Colors.green.shade400,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset:Offset(0,10),
            blurRadius:10,

          )
        ]
      ),
      child: Row(
        children: [
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.black,
                  value: value, onChanged: (bool? cv) {
                setState(() {
                    value = cv!;
                  });
              }),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pay Emma",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 25),),
              SizedBox(height: 10,),
              Text("20 dollor for sanga",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.23,),
          IconButton(onPressed: (){}, icon: IconButton(onPressed: (){}, icon:Icon(Icons.delete_sweep_outlined,size: 35,),color: Colors.white,))
        ],
      ),
    );

  }
}
