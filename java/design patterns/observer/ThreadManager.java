import java.util.*;

public class ThreadManager {
	
	private static ThreadManager instance;
	HashMap<String, Thread> threads;

	private ThreadManager() {
		threads = new HashMap<String, Thread>();
	}

	public static ThreadManager getInstance(){
		if (instance == null) {
			instance = new ThreadManager();
		}
		return instance;
	}

	public void run(String name, Runnable r) {
		threads.put(name, new Thread(r));
		threads.get(name).start();
	}

	public void stop() {
		System.out.println("Stopping all threads");
		for(String str : threads.keySet()) {
			threads.get(str).interrupt();
		}
	}

	public void stop(String str) {
		System.out.println("Stopping thread: " + str);
		threads.get(str).interrupt();
	}

}