//
//  Game.swift
//  BlackJack
//
//  Created by Christian Hurtado on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//
import Foundation

class Game {
    var deck = Card.newDeck(aceValue: 1)
    var player = Player(score: 0, cards: [Card](), playerName: "Player")
    var hitPlayer = true
        
    var hasMoreCards: Bool {
                return deck.count != 0
            }
            
    var randomComputerScore: Int {
        let compuScore = 15...21

        return compuScore.randomElement() ?? 17    // might be wrong
    }

    func newGame() {
       deck = Card.newDeck(aceValue: 1)
        player.cards.removeAll()
        player.score = 0
    }
            
    func stopHits() {
        print("")
        print(player.score)
//        print("the computer has \(randomComputerScore)")
        if randomComputerScore > player.score{
            computerVsPlayers()
////            print("you lose, \(randomComputerScore) - \(player.score)")
//    keepGoing = true
//            gameOver = false
//        game.hasMoreCards == false
    }
    }
            
    func hitMe(_ userHit: String) -> Int {
        switch userHit {
        case "hit":
       var shuffledDeck = deck.shuffled()
        if let card = shuffledDeck.popLast() {
            player.cards.append(card)
            print(card.stringify())
            player.score += card.value
            print("player score: \(player.score)")
            if player.score >= 21 {
       //         stopHits()
                computerVsPlayers()
            }
       }
        return player.score
        case "pass":
            game.stopHits()
            print("Player score: \(player.score)")
            gameOver = false
            keepGoing = false
            computerVsPlayers()
        default:
            print("enter 'hit' or 'pass' please")
        }
        return player.score
    }
    
    func computerVsPlayers() {
        let compuPoints = 15...21
        let computerPoints = compuPoints.randomElement() ?? 0
        
        if player.score > 21 {
            print("You lost! 😢")
        }
        if computerPoints > player.score {
            print("Computer wins, \(computerPoints) - \(player.score)")
        }
        if computerPoints < player.score {
            print("Player wins, \(player.score) - \(computerPoints)")
        }
        if computerPoints == player.score {
            print("Tie game at \(player.score) - \(computerPoints)")
        }
        
        print("New game? 'yes' or 'no'?")
        let maybe = readLine()
        if maybe == "yes"{
            game.newGame()
        }
        if maybe == "no"{
            print("thanks for playing!")
            gameOver = true
        }
        
        keepGoing = false
        gameOver = false
        game.hasMoreCards == false
    }
    
    func gameStatus() {
        print("the player's score is \(player.score) and the computer's score is \(randomComputerScore)")
    }
}

