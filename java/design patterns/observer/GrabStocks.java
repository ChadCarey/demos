public class GrabStocks {
	public static void main(String[] args) {
		StockGrabber stockGrabber = new StockGrabber();
		StockObserver observer = new StockObserver(stockGrabber);

		System.out.println("Stocks on single thread");
		stockGrabber.setIBMPrice(200);
		stockGrabber.setApplePrice(300);
		stockGrabber.setGooglePrice(400);

		System.out.println("Multithreaded stocks");

		ThreadManager threads = ThreadManager.getInstance();

		threads.run("Apple", new GetTheStock(stockGrabber, 1, "Apple", 200.0));
		threads.run("IBM", new GetTheStock(stockGrabber, 2, "IBM", 200.0));
		threads.run("Google", new GetTheStock(stockGrabber, 3, "Google", 200.0));

		try {
			Thread.sleep(30000);
		}
		catch (Exception e) { };
		threads.stop();
	}
}