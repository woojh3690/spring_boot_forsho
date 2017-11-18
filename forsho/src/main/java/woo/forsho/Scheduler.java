package woo.forsho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


import saveDB.SaveGoogleDB;
import saveDB.SaveNaverDB;
import woo.forsho.dao.ContentsDao;

@Component
public class Scheduler {
	
	@Autowired
	ContentsDao contentsDao;
	
	/*1. 오후 05:50:00에 호출이 되는 스케쥴러 */
	//@Scheduled(fixedDelay=1000 * 300)//(cron = "30 * * * * *")(fixedDelay=1000 * 300)
	public void cronTest1() {
		System.out.println("오후 05:50:00에 호출이 됩니다 ");
		
		SaveGoogleDB saveGoogleDB = new SaveGoogleDB();
		SaveNaverDB saveNaverDB = new SaveNaverDB();
		saveGoogleDB.setContentsDao(this.contentsDao);
		saveNaverDB.setContentsDao(this.contentsDao);
		saveGoogleDB.start();
		saveNaverDB.start();
		
		System.out.println("완료");
	}
}