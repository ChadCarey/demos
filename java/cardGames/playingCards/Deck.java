/**
* Class: deck
* This is a deck of playing cards
*/

import java.util.*;

public class Deck {

	/*variables*/
	LinkedList<PlayingCard> cards;

	public Deck() {

		cards = new LinkedList<PlayingCard>();

		String[] suits = {"hearts", "clubs", "spades", "diamonds"};
		for(int i = 0; i < 4; ++i) 
			for(int j = 1; j <= 13; ++j) {
				cards.push(new PlayingCard(suits[i],j));
			}
	}

	/**
	* shuffles the deck
	*/
	public void shuffle() {

	}

	/**
	* Puts the cards in order of least to getest, grouped by suits
	*/
	public void sort() {

	}

	/**
	* Draw()
	* This will draw a card from the top of the deck
	*/
	public PlayingCard draw() {
		return cards.pop();
	}

	/*
	* adds a card to the back of the deck
	*/
	public void add(PlayingCard card) {
		cards.addLast(card);
	}

	/**
	* Insert()
	* this will place this card into a random location in the deck
	*/
	public void insert(PlayingCard card) {

	}
}
