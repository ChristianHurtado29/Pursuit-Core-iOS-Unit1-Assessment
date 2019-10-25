//
//  Game.swift
//  BlackJack
//
//  Created by Christian Hurtado on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//
import Foundation

let game = Game()

struct Game {
func startGame() {

    var deck = [Card]()
    var player: Player
    var hitPlayer = Bool()
    
    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    }
    var randomComputerScore: Int {
        
        return player.score     // might be wrong
    }
        var drawCard = [Card]()
        
        print("'hit' or 'pass'")
    var userEntry = readLine()?.lowercased() ?? ""
    
        if userEntry == "hit" {
                func hitMe() -> Card? {
                    drawCard = drawCard.shuffled()
                    player.cards += drawCard
                    return drawCard.popLast()
                    
                }
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


