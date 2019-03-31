import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
    @override
    _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

    final suggestions = <WordPair>[];
    final selected = Set<WordPair>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Demo Infinite ListView'),
                centerTitle: true,
                actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.list),
                        onPressed: viewSelected,
                    )
                ],
            ),
            body: buildSuggestions(),
        );
    }

    void viewSelected() {
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) {
                    final tiles = selected.map((item) {
                        return ListTile(title: Text(item.asPascalCase),);
                    }
                    );

                    final divided = ListTile.divideTiles(
                        context: context,
                        tiles: tiles
                    ).toList();

                    return Scaffold(
                        appBar: AppBar(title: Text('Guardadas'),),
                        body: ListView(
                            children: divided,
                        ),
                    );
                }
            )
        );
    }

    Widget buildSuggestions() {
        return ListView.builder(
            itemBuilder: (context, i) {
                if (i.isOdd) return Divider();

                final index = i ~/ 2;

                if (index >= suggestions.length) {
                    suggestions.addAll(generateWordPairs().take(10));
                }

                return buildRow(suggestions[index]);
            }
        );
    }

    Widget buildRow(WordPair suggestion) {
        bool isSelected = false;

        isSelected = selected.contains(suggestion);

        return ListTile(
            title: Text(suggestion.asPascalCase),
            trailing: Icon(
                isSelected ? Icons.favorite : Icons.favorite_border,
                color: Colors.redAccent,
            ),
            onTap: () {
                setState(() {
                    if (selected.contains(suggestion)) {
                        selected.remove(suggestion);
                    } else {
                        selected.add(suggestion);
                    }
                });
            },
        );
    }
}
