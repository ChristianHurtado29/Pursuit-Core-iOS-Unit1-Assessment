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
        print(player.score)
    }
            
    func hitMe() -> Int {
       card = deck.shuffled()
        player.cards += card
        
        return 1
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
    }
    
    func gameStatus() {
            
    }
}

    


//func newGame() {
//    player.cards.count == 0
//}
//    mutating func hitMe() {
//        player.cards.append(deck.randomElement() ?? )
//    }
//}

//var userEntry = readLine()
//if readLine() == "hit" {
//    print(
//}
//
//if readLine() == "hit" {
//    func getCard() -> Card? {
//        card = card.shuffled()
//        return card.popLast()
//    }


//===================
//Possible userEntry readline
//===================
/*
 
var userEntry = readLine()?.lowercased() ?? ""
    switch userEntry {
case "hit":
            }
    case "pass":
        func stopHits() {
        }
    default:
        print("please type in: 'hit' or 'pass' ")
            }
}
*/
