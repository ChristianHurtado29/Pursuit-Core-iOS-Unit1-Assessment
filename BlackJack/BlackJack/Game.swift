//
//  Game.swift
//  BlackJack
//
//  Created by Christian Hurtado on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//
import Foundation

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
        var card = [Card]()
        
   
        print("'hit' or 'pass'")
    var userEntry = readLine()?.lowercased() ?? ""
        if userEntry == "hit" {
                func getCard() -> Card? {
                    card = card.shuffled()
                    player.cards += card
                    return card.popLast()
                }
    }
    }
    

//func newGame() {
//    player.cards.count == 0
//}
//    mutating func hitMe() {
//        player.cards.append(deck.randomElement() ?? )
//    }
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


