/**
* Class: PlayingCard
* This is a Playing card for a deck of cards
*/
import java.*; /*CHANGE THIS LATER TO BE SPECIFIC!*/

public class PlayingCard implements Comparable {

	/*variables*/
	protected String suit;
	protected int rank;

	/*constructors*/
	public PlayingCard() {
		suit = null;
		rank = -1;
	}

	public PlayingCard(String newSuit, int newRank) {
		setSuit(newSuit);
		setRank(newRank);
	}

	/*getters*/
	public int getRank() { return rank; }
	public String getSuit() { return suit; }

	/*setters*/
	public Boolean set(String newSuit, int newRank) {
		if(setSuit(newSuit) && setRank(newRank)) 
			return true;
		else
			return false;
	}

	public Boolean setRank(int newRank) {
		if(newRank < 14 && newRank > 0) {
			this.rank = newRank;
			return true;
		}
		else {
			this.rank = -1;
			return false; 
		}
	}

	public Boolean setRank(String newRank) {

		newRank = newRank.toLowerCase();
		switch(newRank) {

			case "king":
				this.rank = 13;
			break;

			case "queen":
				this.rank = 12;
			break;

			case "jack":
				this.rank = 11;
			break;

			case "ace":
				this.rank = 1;
			break;
			default:
				this.rank = -1;
				return false;
		}
		return true; 
	}

	public Boolean setSuit(String newSuit) {
		newSuit = newSuit.toLowerCase();
		switch (newSuit) {

			case "spades":
			case "hearts":
			case "diamonds":
			case "clubs":
				this.suit = newSuit;
			break;

			default:
				this.suit = null;
				return false;
		}
		return true;
	}
	/**
	* GetColor
	* returns whether the card is black or red. returns null if card is not set
	*/
	public String getColor(){
		switch (this.suit) {
			case "clubs":
			case "spades":
				return "black";
			case "hearts": 
			case "diamonds":
				return "red";
			}
			return null;
	}

	/*functions*/
}