import 'package:flutter/material.dart';
import 'package:go/Screens/donation.dart';
import 'package:polls/polls.dart';
import 'package:go/data.dart';
import 'package:go/Widgets/bottomNavigation.dart';

class PollView extends StatefulWidget {
  @override
  _PollViewState createState() => _PollViewState();
}

class _PollViewState extends State<PollView> {
  double option1 = 1.0;
  double option2 = 5.0;
  double option3 = 2.0;
  double option4 = 3.0;

  String user = "king@mail.com";
  Map usersWhoVoted = {
    'sam@mail.com': 3,
    'mike@mail.com': 3,
    'john@mail.com': 1,
    'kenny@mail.com': 3,
  };
  String creator = "eddy@mail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(
                "Anket",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            IconButton(
                icon: Icon(Icons.assignment),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donate()),
                  );
                })
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Polls(
              children: [
                // This cannot be less than 2, else will throw an exception
                Polls.options(title: 'Kızılay', value: option1),
                Polls.options(title: 'Patile', value: option2),
                Polls.options(title: 'Ahbap', value: option3),
                Polls.options(title: 'Mehmetçik Vakfı', value: option4),
              ],
              question: Text('Bu ay hangi yardım kuruluşuna bağış yapalım ?'),
              currentUser: this.user,
              creatorID: this.creator,
              voteData: usersWhoVoted,
              userChoice: usersWhoVoted[this.user],
              onVoteBackgroundColor: Colors.orange[200],
              leadingBackgroundColor: Colors.orange[300],
              backgroundColor: Colors.white,
              onVote: (choice) {
                print(choice);
                setState(() {
                  this.usersWhoVoted[this.user] = choice;
                });
                if (choice == 1) {
                  setState(() {
                    option1 += 1.0;
                  });
                }
                if (choice == 2) {
                  setState(() {
                    option2 += 1.0;
                  });
                }
                if (choice == 3) {
                  setState(() {
                    option3 += 1.0;
                  });
                }
                if (choice == 4) {
                  setState(() {
                    option4 += 1.0;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
