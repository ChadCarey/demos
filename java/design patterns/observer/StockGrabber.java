
import java.util.ArrayList;

public class StockGrabber implements Subject {

	private ArrayList<Observer> observers;
	private double ibmPrice;
	private double applePrice;
	private double googlePrice;

	public void StockGrabber() {
		System.out.println("init");
		observers = new ArrayList<Observer>();
	}


	public void register(Observer newObserver) {
		if(observers == null) {
			System.out.println("observer==null");
			observers = new ArrayList<Observer>();
		}
		observers.add(newObserver);
	}
	public void unregister(Observer o) {
		int index = observers.indexOf(o);
		observers.remove(index);
	}
	public void notifyObserver(){
		for(Observer o : observers) {
			o.update(ibmPrice, applePrice, googlePrice);
		}
	}

	public void setIBMPrice(double price) {
		this.ibmPrice = price;
		notifyObserver();
	}

	public void setApplePrice(double price) {
		this.applePrice = price;
		notifyObserver();
	}

	public void setGooglePrice(double price) {
		this.googlePrice = price;
		notifyObserver();
	}

}