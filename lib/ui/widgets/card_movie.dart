import 'package:flutter/material.dart';
import 'package:moviez_challenge_bwa/model/movie_model.dart';
import 'package:moviez_challenge_bwa/ui/theme.dart';
import 'package:moviez_challenge_bwa/ui/widgets/rate_item.dart';

class CardMovie extends StatelessWidget {
  final MovieModel movie;

  const CardMovie(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 24),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              movie.imgUrl,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: primaryText.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    movie.genre,
                    style: secondaryText.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Row(
                children: [1, 2, 3, 4, 5]
                    .map((index) => RateItem(index, movie.rate))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
