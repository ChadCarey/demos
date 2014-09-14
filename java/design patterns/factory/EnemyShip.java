public abstract class EnemyShip {

	private String name;
	private double damage;

	public String getName() { return name; }
	public void setName(String newName) { this.name = newName; }

	public double getDamage() { return damage; }
	public void setDamage(double damage) { this.damage = damage; }

	public void display() {
		System.out.println(getName() + " is on the screen");
	}

	public void chaseHero() {
		System.out.println(getName() + " is chasing the hero");
	}

	public void shoot() {
		System.out.println(getName() + " attacks and does " + getDamage() + " damage");
	}
}