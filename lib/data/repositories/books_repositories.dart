//import '../models/book.dart';

import 'package:vesti_flutter_ui_task/data/models/books.dart';

class BookRepository {
  List<Book> getBooks() {
    return [
      // Book(
      //   imageUrl:
      //       'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1736330000i/223370541.jpg',
      //   title: 'The Three Lives of Cate Kay',
      //   rating: 4.1,
      //   pages: 320,
      //   language: 'English',
      //   synopsis: 'An exploration of identity and career struggles.',
      //   genre: 'Fiction',
      //   reviews: [
      //     Review(
      //         userName: 'JaneDoe',
      //         comment:
      //             'A compelling read that delves deep into personal growth.'),
      //     Review(
      //         userName: 'BookLover92',
      //         comment: 'Insightful and thought-provoking.'),
      //   ],
      //   status: 'New Arrival',
      //   borrowed: true,
      //   daysLeft: '2 days',
      //   author: 'Kate fagan',
      // ),
      Book(
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1316177353i/10079321.jpg',
        title: 'The Magician King',
        rating: 4.3,
        pages: 400,
        language: 'English',
        synopsis: 'An Arthurian fantasy adventure.',
        genre: 'Fantasy',
        reviews: [
          Review(
            userName: 'FantasyFan',
            comment: 'A magical journey filled with intrigue.',
          ),
          Review(
            userName: 'StorySeeker',
            comment: 'Captivating from start to finish.',
          ),
        ],
        status: 'Not a New Arrival',
        borrowed: true,
        daysLeft: '1 day',
        author: 'john doe',
      ),
      Book(
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1584401917i/53103895.jpg',
        title: 'One to Watch',
        rating: 4.5,
        pages: 400,
        language: 'English',
        synopsis: 'A deep dive into the history of reality TV.',
        genre: 'Non-Fiction',
        reviews: [
          Review(
            userName: 'TVFanatic',
            comment:
                'A fascinating look into the evolution of reality television.',
          ),
          Review(
            userName: 'MediaGuru',
            comment: 'Well-researched and engaging.',
          ),
        ],
        status: 'Not a New Arrival',
        borrowed: false,
        daysLeft: '0 days',
        author: 'john doe',
      ),
      Book(
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1387124618i/9361589.jpg',
        title: 'The Night Circus',
        rating: 4.6,
        pages: 400,
        language: 'English',
        synopsis: 'A magical competition between two young illusionists.',
        genre: 'Fiction',
        reviews: [
          Review(
            userName: 'MagicLover',
            comment: 'A beautifully written novel full of enchantment.',
          ),
          Review(
            userName: 'BookWorm',
            comment: 'The descriptions make the magic feel real.',
          ),
        ],
        status: 'New Arrival',
        borrowed: false,
        daysLeft: '0 day',
        author: 'lagbaja',
      ),
      Book(
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1400602609i/28187.jpg',
        title: 'The Lightning Thief',
        rating: 4.5,
        pages: 384,
        language: 'English',
        synopsis: 'A young boy discovers he is the son of Poseidon.',
        genre: 'Fiction',
        reviews: [
          Review(
            userName: 'PercyFan',
            comment: 'A thrilling adventure filled with Greek mythology.',
          ),
          Review(
            userName: 'AdventureSeeker',
            comment: 'A great read for fans of mythology and action.',
          ),
        ],
        status: 'Not a New Arrival',
        borrowed: false,
        daysLeft: '0 days',
        author: 'john doe',
      ),
      Book(
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1506026635i/35133922.jpg',
        title: 'Educated',
        rating: 4.7,
        pages: 400,
        language: 'English',
        synopsis:
            'A memoir about a woman who grows up in a strict and isolated family.',
        genre: 'Memoir',
        reviews: [
          Review(
            userName: 'MemoirLover',
            comment: 'An inspiring and powerful story of self-discovery.',
          ),
          Review(
            userName: 'Reader88',
            comment: 'A raw and emotional account of resilience.',
          ),
        ],
        status: 'New Arrival',
        borrowed: false,
        daysLeft: '0 days',
        author: 'lagbaja',
      ),
      Book(
          imageUrl:
              'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1668782119i/40097951.jpg',
          title: 'The Silent Patient',
          rating: 4.2,
          pages: 368,
          language: 'English',
          synopsis:
              'A psychological thriller about a woman who stops speaking after a tragic incident.',
          genre: 'Thriller',
          reviews: [
            Review(
              userName: 'ThrillerJunkie',
              comment: 'A gripping and suspenseful page-turner.',
            ),
            Review(
              userName: 'MindTwister',
              comment: 'Kept me guessing until the very end.',
            ),
          ],
          status: 'Not a New Arrival',
          borrowed: false,
          daysLeft: '0 days',
          author: 'john doe lagbaja'),
    ];
  }
}
