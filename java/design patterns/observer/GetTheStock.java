import java.text.DecimalFormat;
import java.*;

public class GetTheStock implements Runnable {

	private int startTime;
	private String stock;
	private double price;

	private StockGrabber stockGrabber;

	public GetTheStock(StockGrabber stockGrabber, int newStartTime, String newStock, double newPrice) {
		this.stockGrabber = stockGrabber;
		startTime = newStartTime;
		stock = newStock;
		price = newPrice;
	}

	@Override
	public void run() {
		for(;;) {
			try {
				Thread.sleep(startTime * 1000);
			} 
			catch(Exception e) {
				System.out.println("Stopping " + stock);
				return;
			}

			double randnum = ((Math.random() * (0.06)) - 0.03); // + || - 0.03
			DecimalFormat df = new DecimalFormat("#.##");
			price = Double.valueOf(df.format((price+randnum)));

			if(stock.equals("IBM")) 
				stockGrabber.setIBMPrice(price);
			if(stock.equals("Apple")) 
				stockGrabber.setApplePrice(price);
			if(stock.equals("Google")) 
				stockGrabber.setGooglePrice(price);
			System.out.println(stock + ": " + df.format((price+randnum)) +
			 " " + df.format(randnum) + "\n");
			 	
			 }

		}
	}
