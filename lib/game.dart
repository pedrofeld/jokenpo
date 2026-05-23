import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  var _appImage = AssetImage("images/default.png");
  var _message = "Select an option below:";

  void _selectOption(String userSelection){
    var options = ["rock", "paper", "scissors"];
    var number = Random().nextInt(3);
    var appselection = options[number];

    print("User selection: " + userSelection);
    print("App selection: " + appselection);

    switch(appselection){
      case "rock":
        setState(() {
          this._appImage = AssetImage("images/rock.png");
        });
        break;
      case "paper":
        setState(() {
          this._appImage = AssetImage("images/paper.png");
        });
        break;
      case "scissors":
        setState(() {
          this._appImage = AssetImage("images/scissors.png");
        });
        break;
    }

    if(
      (userSelection == "rock" && appselection == "scissors") ||
      (userSelection == "scissors" && appselection == "paper") ||
      (userSelection == "paper" && appselection == "rock")
    ){
      setState(() {
        this._message = "Congratulations! You win :)";
      });
    }else if (
      (appselection == "rock" && userSelection == "scissors") ||
      (appselection == "scissors" && userSelection == "paper") ||
      (appselection == "paper" && userSelection == "rock")
    ){
      setState(() {
        this._message = "Not this time. Try again!";
      });
    }else{
      this._message = "We draw!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "App selection:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image(image: this._appImage,),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _selectOption("rock"),
                child: Image.asset(
                  "images/rock.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _selectOption("paper"),
                child: Image.asset(
                  "images/paper.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _selectOption("scissors"),
                child: Image.asset(
                  "images/scissors.png",
                  height: 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
