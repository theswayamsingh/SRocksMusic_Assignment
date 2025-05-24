import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:srocksmusic_assignment/view_model/service_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ServiceViewModel>(context);

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 28),
        bottomNavigationBar: NavigationBar(
          height: screenHeight*.09,
          backgroundColor: Color.fromARGB(255, 24, 23, 28),
          indicatorColor: Colors.white.withValues(alpha: 0),
          destinations: [
            NavigationDestination(
              icon: Image.asset(
                "assets/bottom_navigation_icons/s.rocks.music logo.png",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/bottom_navigation_icons/news.png",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/bottom_navigation_icons/trackbox.png",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/bottom_navigation_icons/workspace.png",
              ),
              label: "",
            ),
          ],
        ),
        body: 
          viewModel.isLoading ? Center(child: CircularProgressIndicator()) :        
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight*.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 169, 1, 64),
                            const Color.fromARGB(255, 90, 1, 64)
                          ],
                        )
                      ),
                    ),
                    SafeArea(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: screenWidth*.8,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 47, 47, 57),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15)
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth*.5,
                                      child: TextField(
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Search \"Punjabi Lyrics\"",
                                          hintStyle: TextStyle(
                                            color: Color.fromARGB(255, 90, 90, 100),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16
                                          ),
                                        ),
                                      ),
                                    ),IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.mic,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                child: IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight*.06,
                          ),
                          Stack(
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "Claim your",
                                      style: GoogleFonts.syne(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                      ),
                                    ),
                                    Text(
                                      "Free Demo",
                                      style: GoogleFonts.lobster(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 45
                                      ),
                                    ),
                                    Text(
                                      "for custom Music Production",
                                      style: GoogleFonts.syne(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight*.015,
                                    ),
                                    ElevatedButton(
                                      onPressed: (){},
                                      child: Text(
                                        "Book Now",
                                        style: GoogleFonts.syne(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Transform.translate(
                                    offset: Offset(-screenWidth*.08, screenHeight*.1),
                                    child: Image.asset(
                                      "assets/images/disk.png",
                                      width: screenWidth*.3,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(screenWidth*.48, screenHeight*.1),
                                    child: Image.asset(
                                      "assets/images/piano.png",
                                      width: screenWidth*.3,
                                    ),
                                  ),
                                ],
                              )
                            ]
                          )
                        ],
                      ),
                    ),
                  ]
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight*.03),
                  child: Text(
                    "Hire hand-picked Pros for popular music services",
                    style: GoogleFonts.syne(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemCount: 4,
                    itemBuilder: (context, index){
                      final service = viewModel.services[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth*.05,
                          ),
                        child: Card(
                          color: const Color.fromARGB(255, 36, 35, 35),
                          child: ListTile(
                            leading: Image.asset(service.iconPath),
                            title: Text(
                              service.title,
                              style: GoogleFonts.syne(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight*.016
                              ),
                            ),
                            subtitle: Text(
                              service.description,
                              style: GoogleFonts.syne(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: screenHeight*.014
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                              size: 20,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(service.title),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;

  const DetailScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.lobster(),
        ),
      ),
      body: Center(
        child: Text(
          'You tapped on: $title',
          style: GoogleFonts.syne(
            fontSize: 22
          ),
        ),
      ),
    );
  }
}