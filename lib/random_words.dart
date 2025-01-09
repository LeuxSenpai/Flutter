import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final randomWordPairs = <WordPair>[];
  final savedWordPairs = <WordPair>{};

  Widget buildlist() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider(); // Add a divider for odd rows
        final index = i ~/ 2; // Integer division to get the index of the word pair
        if (index >= randomWordPairs.length) {
          randomWordPairs.addAll(generateWordPairs().take(10)); // Generate more word pairs if needed
        }
        return buildrow(randomWordPairs[index]);
      },
    );
  }

  Widget buildrow(WordPair wordPair) {
    final alreadySaved = savedWordPairs.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            savedWordPairs.remove(wordPair);
          } else {
            savedWordPairs.add(wordPair);
          }
        });
      },
    );
  }

  void pushedsave() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<Widget> tiles = savedWordPairs.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: const TextStyle(fontSize: 20),
                ),
              );
            },
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
              backgroundColor: Colors.amber,
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: pushedsave,
          )
        ],
        title: const Text(
          "RANDOM WORD GENERATOR",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
            letterSpacing: 0.10,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: buildlist(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RandomWords(),
  ));
}
