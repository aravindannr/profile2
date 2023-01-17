import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void  main(){
  runApp(MaterialApp(home: profile_ui2(),debugShowCheckedModeBanner: false,));
}
class profile_ui2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Icon(Icons.menu),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey[100],
                    backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/59318f68178249.5b540076b3889.png")
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100,
                    right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(Logos.facebook_logo),
                    Logo(Logos.twitter),
                    Logo(Logos.linkedin),
                    Logo(Logos.github)

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Column(
                  children: [
                    Text("TOTO",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height:2,),
                    Text("@webrror"),
                    SizedBox(height: 8,),
                    Text("Mobile App Developer",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 50,
                    bottom: 10
                ),
                height: MediaQuery.of(context).size.height *0.3,
                width: MediaQuery.of(context).size.width *0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.privacy_tip_outlined),
                          title: Text("Privacy"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child:ListTile(
                          leading: Icon(Icons.history),
                          title: Text("Purchase history"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.help_outline_outlined),
                          title: Text("Help & Support"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Setting"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.person_add_alt_1),
                          title: Text("Invite a friend"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child:ListTile(
                          leading: Icon(Icons.exit_to_app_rounded),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }

}