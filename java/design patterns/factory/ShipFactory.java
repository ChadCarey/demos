/**
* Factory design pattern
* Use: 	When you want a method that returns one of many possible classes that share a super class
*		When we don't know what exact class we want to use in advance
*		You might want to use this pattern if you have a bunch of if statements
*		used to determine which subclass you want
* example: randomly generated enemy type
*/

public class ShipFactory {

	public EnemyShip makeEnemyShip(String input) {
		EnemyShip ship = null;

		switch (input.toLowerCase()) {
			case "ufo":
				ship = new UFOEnemyShip();
			break;

			case "rocket":
				ship = new RocketEnemyShip();
			break;

			case "big":
			case "boss":
			case "big ufo":
				ship = new BigUFOEnemyShip();
			break;

			default:
				ship = null;
		}
		return ship;
	}

}