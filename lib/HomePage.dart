import 'package:flutter/material.dart';
import 'package:user_login/Utils/appTheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.kBackgroundColor,
        title: Text('Login Example', style: TextStyle(color: AppTheme.kHighEmphasisColor),),
        elevation: 0,
      ),
      backgroundColor: AppTheme.kBackgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16,0,16,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded,color: AppTheme.kHighEmphasisColor,)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      width: 60,height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(child: Text('Running Miles-3.7',)),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(child: Text('Total Sleep Hours: 6.5 hrs',)),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(child: Text('Meditation: 30 mins',)),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(child: Text('Protein Intake: 30gms',)),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
          unselectedItemColor: AppTheme.kLowEmphasisColor,
          selectedItemColor: AppTheme.kPrimaryColor,
          elevation: 6,


          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline_rounded),label: 'Data'),
            BottomNavigationBarItem(icon: Icon(Icons.graphic_eq_rounded),label: 'Insights'),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: 'More'),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: 'More'),
          ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.kPrimaryColor,
        onPressed: (){

        },
        child: Icon(Icons.add_rounded,color: Colors.white,),
      ),
    );
  }
}
