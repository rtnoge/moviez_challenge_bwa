import 'package:flutter/material.dart';
import 'package:moviez_challenge_bwa/model/movie_model.dart';
import 'package:moviez_challenge_bwa/ui/theme.dart';
import 'package:moviez_challenge_bwa/ui/widgets/list_movie.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
          children: [
            //SEARCH BAR
            Container(
              width: double.infinity,
              height: 45,
              padding:
                  EdgeInsets.only(left: 22, top: 12, right: 22, bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: thirdColor,
              ),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon/search.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search movie',
                          hintStyle: secondaryText.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                        style: primaryText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //CONTENT
            Padding(
              padding: EdgeInsets.only(top: 35),
              child: RichText(
                text: TextSpan(
                  text: 'Search Result',
                  style: primaryText.copyWith(
                    fontSize: 20,
                    fontWeight: black,
                  ),
                  children: [
                    TextSpan(
                      text: ' (3)',
                      style: primaryText.copyWith(
                        fontSize: 20,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  CardList(
                    MovieModel(
                      title: 'The Dark II',
                      imgUrl: 'assets/images/search_1.png',
                      genre: 'Horror',
                      rate: 4,
                    ),
                  ),
                  CardList(
                    MovieModel(
                      title: 'The Dark Knight',
                      imgUrl: 'assets/images/search_2.png',
                      genre: 'Heroes',
                      rate: 5,
                    ),
                  ),
                  CardList(
                    MovieModel(
                      title: 'The Dark Tower',
                      imgUrl: 'assets/images/search_3.png',
                      genre: 'Action',
                      rate: 4,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.only(top: 73),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Suggest Movie',
                      style: thirdText.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
