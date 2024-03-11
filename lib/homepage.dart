import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Color.fromARGB(240, 254, 218, 117),
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.red,
          )
        ],
      ),
      // body:ListView(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color:const  Color.fromARGB(160, 160, 160, 160),

      //           child: Image.network(
      //            "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
      //             width: double.infinity,
      //          ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         )

      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color:const  Color.fromARGB(160, 160, 160, 160),

      //           child: Image.network(
      //            "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
      //             width: double.infinity,
      //          ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         )

      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color:const  Color.fromARGB(160, 160, 160, 160),

      //           child: Image.network(
      //            "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
      //             width: double.infinity,
      //          ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                   Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.send,
      //               ),
      //             ),
      //           ],
      //         )

      //       ],
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost1Liked = !_isPost1Liked;
                        });
                      },
                      icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(), // Used instead of SizedBox
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(160, 160, 160, 160),
                  child: Image.network(
                    "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost2Liked = !_isPost2Liked;
                        });
                      },
                      icon: Icon(
                        _isPost2Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost2Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromARGB(159, 0, 0, 0),
                  child: Image.network(
                    "https://i.pinimg.com/736x/3f/fe/86/3ffe86c2544ce1eb8349dbdfc9360904.jpg",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost3Liked = !_isPost3Liked;
                        });
                      },
                      icon: Icon(
                        _isPost3Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost3Liked ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
