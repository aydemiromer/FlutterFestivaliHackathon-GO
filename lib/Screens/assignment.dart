import 'package:flutter/material.dart';
import 'package:polls/polls.dart';

class PollView extends StatefulWidget {
  @override
  _PollViewState createState() => _PollViewState();
}

class _PollViewState extends State<PollView> {
  double option1 = 2.0;
  double option2 = 0.0;
  double option3 = 2.0;
  double option4 = 3.0;
  double option5 = 3.0;
  double option6 = 3.0;
  double option7 = 1.0;

  String user = "king@mail.com";
  Map usersWhoVoted = {
    'sam@mail.com': 3,
    'mike@mail.com': 4,
    'john@mail.com': 1,
    'kenny@mail.com': 6,
    'kenny1@mail.com': 2,
    'kenny2@mail.com': 1
  };
  String creator = "eddy@mail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.orange,
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Anket",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      body: Container(
        child: Polls(
          children: [
            // This cannot be less than 2, else will throw an exception
            Polls.options(title: 'Kızılay', value: option1),
            Polls.options(title: 'Yeşilay', value: option2),
            Polls.options(title: 'Tema', value: option3),
            Polls.options(title: 'Patibu', value: option4),
            Polls.options(title: 'asd', value: option5),
            Polls.options(title: 'Patibu', value: option6),
            Polls.options(title: 'Patibu', value: option7),
          ],
          question: Text('how old are you?'),
          currentUser: this.user,
          creatorID: this.creator,
          voteData: usersWhoVoted,
          userChoice: usersWhoVoted[this.user],
          onVoteBackgroundColor: Colors.blue,
          leadingBackgroundColor: Colors.blue,
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
            if (choice == 5) {
              setState(() {
                option3 += 1.0;
              });
            }
            if (choice == 6) {
              setState(() {
                option3 += 1.0;
              });
            }
            if (choice == 7) {
              setState(() {
                option3 += 1.0;
              });
            }
          },
        ),
      ),
    );
  }
}
