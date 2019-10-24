//
//  Game.swift
//  BlackJack
//
//  Created by Christian Hurtado on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

func startGame() {
    print("Welcome to the table!")
    print("The game we're playing is")
    sleep(1)
    print("BLACKJACK!!")
    print("'hit' or 'pass'")
    var userEntry = readLine()
    if readLine() == "hit" {
        print(
    }
}

struct Game {
    var deck = [Card]()
    var player: Player
    var hitPlayer = Bool()
    
    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    }
    var randomComputerScore: Int {
        
        return player.score     // might be wrong
    }
    
    

//func newGame() {
//    player.cards.count == 0
//}
//    mutating func hitMe() {
//        player.cards.append(deck.randomElement() ?? )
//    }
}
