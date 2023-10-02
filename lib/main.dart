import 'package:flutter/material.dart';
import 'package:testing/widgets/portfolio.dart';

void main() {
  runApp(const PortfolioApp());
}

Row build_URLs() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Github'),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('LinkedIn'),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Twitter'),
        ),
      ),
    ],
  );
}

Container buildProfile(double height, double width) {
  TextEditingController _textController = TextEditingController();
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    height: height * 0.60, width: width,
    margin: const EdgeInsets.all(20),
    // Set the container's color to transparent
    child: Row(
      children: [
        width > 600
            ? const Padding(
                padding: EdgeInsets.all(30.0),
                child: CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.purple,
                  child: CircleAvatar(
                    radius: 100,
                    // backgroundImage: NetworkImage(
                    //   'https://avatars.githubusercontent.com/u/105251622?v=4',
                    // ),
                  ),
                ),
              )
            : Container(),
        const SizedBox(height: 16), // Add some spacing
        // handle for width <712.0
        width < 600
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.12, bottom: 15),
                    child: const CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.purple,
                      child: CircleAvatar(
                        radius: 100,
                        // backgroundImage: NetworkImage(
                        //   'https://avatars.githubusercontent.com/u/105251622?v=4',
                        // ),
                      ),
                    ),
                  ),
                  const Text(
                    '''Hey there! I am Uday Kiran,
               ''',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const Text(
                    "A Pre-final Year CSE Student\n at IIIT Vadodara",
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              )
            : Builder(builder: (context) {
                print(width - 60 * 0.30 - 302);
                print(width);
                return Container(
                  width: width - 60 * 0.30 - 302,
                  height: height * 0.60,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Hey there! I am Uday Kiran',
                        style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 2,
                            color: Theme.of(context).primaryColorDark),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "A passionate Software Engineer with a love for turning complex problems into elegant solutions. My journey in the world of technology began with a fascination for how software powers our modern world, and that fascination has only grown stronger over the years." +
                            ' A pre-final year CSE student at IIIT Vadodara.',
                        style: TextStyle(fontSize: 18.0, letterSpacing: 2),
                        overflow: TextOverflow.visible,
                      ),
                      // Spacer(),
                      width > 715
                          ? SizedBox(
                              width: width * 0.25,
                              child: TextField(
                                controller: _textController,
                                onSubmitted: (value) {
                                  print(_textController.text);
                                  _textController.clear();
                                },
                                decoration: const InputDecoration(
                                    hoverColor: Colors.greenAccent,
                                    suffixIcon: Icon(Icons.send_rounded),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 217, 209, 241),
                                    icon: Icon(
                                      Icons.chat_bubble_outline_rounded,
                                      color: Colors.greenAccent,
                                    ),
                                    hintText: "wanna say something....?"),
                              ))
                          : Container(),
                      // ReachMeOut(),

                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                );
              }),
      ],
    ),
  );
}
