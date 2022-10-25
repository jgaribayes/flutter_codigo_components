import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple ,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,),),

        ],
      ),
      body: Column(
        children: [
          FadeInImage(
            image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            placeholder: AssetImage("assets/images/loading.gif"),
            height: 600,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1300),
          ),
          // Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
          // Image.asset("assets/images/loading.gif"),
        ],
      ),
    );
  }
}
