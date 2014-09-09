/**
* Pattern: Observer Pattern
* Use: Used when you have many objectts that need an update when another object changes
* Example: 
*/

public interface Subject {

	public void register(Observer newObserver);
	public void unregister(Observer o);
	public void notifyObserver();

}