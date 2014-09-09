public class StockObserver implements Observer {
	private double ibmPrice;
	private double applePrice;
	private double googlePrice;

	private static int observerIDTracker = 0;

	private int observerID;

	private Subject stockGrabber;

	public StockObserver(Subject sg) {
		this.stockGrabber = sg;
		this.observerID = observerIDTracker++; // assign ID then increment
		System.out.println("New observer: " + this.observerID);

		sg.register(this);
	}

	public void update (double ibmPrice, double applePrice, double googlePrice) {
		this.ibmPrice = ibmPrice;
		this.applePrice = applePrice;
		this.googlePrice = googlePrice;

		printPrices();
	}

	public void printPrices() {
		System.out.println("observerID: " + this.observerID);
		System.out.println("IBM Price: " + this.ibmPrice);
		System.out.println("Apple Price: " + this.applePrice);
		System.out.println("Google Price: " + this.googlePrice);
	}
}