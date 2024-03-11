import 'package:flutter/material.dart';

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({super.key});

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  bool _isPost1Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF405DE6),
                Color(0xFF5851DB),
                Color(0xFF833AB4),
                Color(0xFFC13584),
                Color(0xFFFD1D1D),
                Color(0xFFF56040),
                Color(0xFFF77737),
                Color(0xFFFCAF45),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(
            
            color: Colors.white,
            fontSize: 28.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
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
              color: _isPost1Liked ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, 
              itemBuilder: (context, index) {
                return const StoryWidget();
              },
            ),
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const PostWidget(
                username: 'Cute Cat',
                imageUrl:
                    'https://placekitten.com/400/300', 
                likesCount: 6445,
                caption: 'Caption goes here...',
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFFF9F9F9),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF2E5894), width: 2.0),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://placekitten.com/100/100'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          const Text(
            'Cute Cat', 
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

class PostWidget extends StatefulWidget {
  final String username;
  final String imageUrl;
  final int likesCount;
  final String caption;

  const PostWidget({
    Key? key,
    required this.username,
    required this.imageUrl,
    required this.likesCount,
    required this.caption,
  }) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20.0,
                // You can set an image here
              ),
              const SizedBox(width: 12.0),
              Text(
                widget.username,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
                child: Image.network(
                  widget.imageUrl,
                  height: 300.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: Icon(
                  Icons.favorite,
                  color: _isLiked ? Colors.red : Colors.transparent,
                  size: 24.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: _isLiked ? Colors.red : Colors.black,
                  size: 24.0,
                ),
              ),
              const SizedBox(width: 8.0),
              const Icon(
                Icons.message,
                size: 20.0,
              ),
              const SizedBox(width: 8.0),
              const Icon(
                Icons.send,
                size: 20.0,
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark,
                size: 20.0,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            'Liked by ${widget.likesCount} people',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            widget.caption,
          ),
        ],
      ),
    );
  }
}

