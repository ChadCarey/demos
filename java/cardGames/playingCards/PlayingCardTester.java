/**
* Class: PlayingCardTester
* This is a class to test all of my classes for playing card games
*/

class PlayingCardTester {

	/**
	* Class: testCards
	* This will test the playing card class
	*/
	private Boolean testCards() {
		// make invalid cards
		// valid cards
		String[] suits = {"hearts", "clubs", "spades", "diamonds"};
		PlayingCard c = new PlayingCard();
		for(int i = 0; i < 4; ++i) 
			for(int j = 1; j <= 13; ++j) {
			c.set(suits[i],j);

			if(c.getRank() != j || !c.getSuit().equals(suits[i])) {
				System.err.println("Suits/ranks are not being set or returned correctly");
				System.err.println("Expected: " + suits[i] + "\n\t" + j);
				System.err.println("Actual: " + c.getSuit() + "\n\t" + c.getRank());
				return false;
			}
		}
		//false for invalid input
		if(c.set("jimmy",14) || c.set("jimmy",0))
			return false;

		System.out.println("Cards passed all tests");
		return true;
	}

	/*Main is a driver for the tests*/
	public static void main(String[] args) {
		PlayingCardTester t = new PlayingCardTester();
		// if the cards don't pass then nothing else should run
		if(t.testCards()) {
		}
	}
}