import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoFeed extends StatefulWidget {
  // VideoFeed({Key key}) : super(key: key);

  _VideoFeedState createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=3R6KnQLvZNI',
      'thumbnail':
          "https://ccweb.imgix.net/https%3A%2F%2Fd3f1iyfxxz8i1e.cloudfront.net%2Fcourses%2Fcourse_image%2F1ebbd5159271.jpg?ar=16%3A9&auto=format&cs=strip&fit=crop&h=380&ixlib=php-3.3.1&w=535&s=91e70d8b902cce1993537309e6ece188",
      'title': 'Flutter for beginners',
      'date': 'July 10, 2022',
      'creator': 'Mohammed Shinadh',
      'profile_url':
          'https://pbs.twimg.com/profile_images/1308872181590286336/Nnwldwpn_400x400.jpg',
    },
    {
      'url': 'https://www.youtube.com/watch?v=sPW7nDBqt8w',
      'thumbnail':
          'https://images.unsplash.com/photo-1639507986194-48ef61205b61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zmx1dHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'The Flutter YouTube Channel is Here!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=vqPG1tU6-c0',
      'thumbnail':
          'https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmx1dHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'Introducing The Boring Show!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=frEG8f0Aa1c',
      'thumbnail':
          'https://images.unsplash.com/photo-1573523765924-e6c704ce8048?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8MTYlM0E5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'Photography Tips',
      'date': 'Apr 10, 2019',
      'creator': 'Mohammed Shinadh',
      'profile_url':
          'https://pbs.twimg.com/profile_images/1308872181590286336/Nnwldwpn_400x400.jpg',
    },
    {
      'url': 'https://youtu.be/GE0oeBj9Cr0',
      'thumbnail':
          'https://images.unsplash.com/photo-1603550489068-68e60062b3f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fDE2JTNBOXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'Watching Sunset at best sea in the world',
      'date': 'May 11, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image(
                  image: NetworkImage(data[index]['thumbnail']),
                  centerSlice: Rect.largest,
                  fit: BoxFit.contain,
                ),
                aspectRatio: 16 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['profile_url']),
                ),
                title: Text(
                  data[index]['title'],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle:
                    Text(data[index]['creator'] + " . " + data[index]['date'],
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}
