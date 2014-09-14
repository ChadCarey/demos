import java.util.Scanner;

public class EnemyShipTester {
	
	public static void main(String[] args) {
		ShipFactory factory = new ShipFactory();
		EnemyShip ship = null;
		Scanner scanner = new Scanner(System.in);
		String input = "";

		while(ship == null) {
			System.out.println("Please chose a ship. UFO or Rocket");
			if(scanner.hasNextLine()) {
				input = scanner.nextLine();
			}
			ship = factory.makeEnemyShip(input);
		}
		fight(ship);
	}

	public static void fight(EnemyShip ship) {
		ship.display();
		ship.chaseHero();
		ship.shoot();
	}
}