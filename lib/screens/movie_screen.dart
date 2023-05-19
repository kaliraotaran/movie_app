import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // added the dots so it would expand the list
          ..._buildBackground(context, movie),
          _buildMovieInformation(context),
          _buildActions(context)
        ],
      ),
    );
  }

  Positioned _buildActions(BuildContext context) {
    return Positioned(
        width: MediaQuery.of(context).size.width,
        bottom: 50,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: Color(0xFFFF7272),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.425, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                              text: 'Add to ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                          const TextSpan(
                            text: 'Watchlist',
                          )
                        ]),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.white,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.425, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _MoviePlayer(
                                  movie: movie,
                                )));
                  },
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                              text: 'Start ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                          const TextSpan(
                              text: 'Watching',
                              style: TextStyle(color: Colors.black))
                        ]),
                  )),
            ],
          ),
        ));
  }

  Positioned _buildMovieInformation(BuildContext context) {
    return Positioned(
      bottom: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              movie.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${movie.year} | ${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes.remainder(60)}m ',
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
                initialRating: 4.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 20,
                unratedColor: Colors.white,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, index) {
                  return const Icon(Icons.star, color: Colors.amber);
                },
                onRatingUpdate: (rating) {}),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              maxLines: 8,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white, height: 1.75),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildBackground(context, movie) {
    // here we wrapped the container with a list
    return [
      Container(
        height: double.infinity,
        color: Color(0xFF000B49),
      ),
      Image.asset(
        movie.imagePath,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
      ),
      const Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Color(0xFF000B49)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.5]),
          ),
        ),
      ),
    ];
  }
}

class _MoviePlayer extends StatefulWidget {
  const _MoviePlayer({super.key, required this.movie});
  final Movie movie;

  @override
  State<_MoviePlayer> createState() => __MoviePlayerState();
}

class __MoviePlayerState extends State<_MoviePlayer> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(widget.movie.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController, aspectRatio: 16 / 9);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Chewie(controller: chewieController),
      ),
    );
  }
}
