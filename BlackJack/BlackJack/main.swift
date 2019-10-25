//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README

//let game = Game()

print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")

print("Welcome to the table!")
   print("The game we're playing is")
   sleep(1)
   print("BLACKJACK!!")
   print("If you've never played Blackjack before, don't worry. The game is you against the dealer and you're both trying to draw 21 points(Blackjack) without going over(Bust). You will draw cards until you say stop if you're too close to 21 and believe a next 'hit' will throw you over the 21 which is an automatic lose. If neither you or the dealer has 21, the winner is the player with most points.")
var game = Game()

game.newGame()
//game.startGame()

// There are 52 in a deck of cards

// pushing to github
