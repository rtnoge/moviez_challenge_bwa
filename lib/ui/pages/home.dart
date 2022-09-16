import 'package:flutter/material.dart';
import 'package:moviez_challenge_bwa/model/movie_model.dart';
import 'package:moviez_challenge_bwa/ui/pages/search.dart';
import 'package:moviez_challenge_bwa/ui/theme.dart';
import 'package:moviez_challenge_bwa/ui/widgets/list_movie.dart';
import 'package:moviez_challenge_bwa/ui/widgets/card_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 29, left: 24),
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Moviez',
                          style: primaryText.copyWith(
                            fontSize: 28,
                            fontWeight: black,
                          ),
                        ),
                        Text(
                          'Watch much easier',
                          style: secondaryText.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchPage(),
                      ),
                    ),
                    child: Container(
                      width: 55,
                      height: 45,
                      padding: EdgeInsets.only(
                        top: 11,
                        left: 22,
                        right: 11,
                        bottom: 12,
                      ),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Image.asset(
                        'assets/icon/search.png',
                        width: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardMovie(
                      MovieModel(
                        title: 'John Wick 4',
                        imgUrl: 'assets/images/movie_1.png',
                        genre: 'Action, Crime',
                        rate: 5,
                      ),
                    ),
                    CardMovie(
                      MovieModel(
                        title: 'Bohemian Rhapsody',
                        imgUrl: 'assets/images/movie_2.png',
                        genre: 'Documentary',
                        rate: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'From Disney',
                style: primaryText.copyWith(
                  fontSize: 24,
                  fontWeight: black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  CardList(
                    MovieModel(
                      title: 'Mulan Session',
                      imgUrl: 'assets/images/movie_3.png',
                      genre: 'History, War',
                      rate: 3,
                    ),
                  ),
                  CardList(
                    MovieModel(
                      title: 'Beauty & The Beast',
                      imgUrl: 'assets/images/movie_4.png',
                      genre: 'Sci-Fiction',
                      rate: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
