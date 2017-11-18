package woo.forsho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


import saveDB.SaveGoogleDB;
import saveDB.SaveNaverDB;
import saveDB.ShareNumber;
import woo.forsho.dao.ContentsDao;

@Component
public class Scheduler {
	
	@Autowired
	private ContentsDao contentsDao;
	
	ShareNumber shareNumber = new ShareNumber(contentsDao);
	
	/*1. 오후 05:50:00에 호출이 되는 스케쥴러 */
	@Scheduled(fixedDelay=1000 * 15)//(cron = "30 * * * * *")(fixedDelay=1000 * 300)
	public void cronTest1() {
		System.out.println("스케쥴러 호출");
		
		if (!(shareNumber.isGoogleIsWorking() || shareNumber.isNaverIsWorking())) {
			shareNumber = new ShareNumber(contentsDao);
			SaveGoogleDB saveGoogleDB = new SaveGoogleDB();
			SaveNaverDB saveNaverDB = new SaveNaverDB();
			saveGoogleDB.setContentsDao(this.contentsDao);
			saveNaverDB.setContentsDao(this.contentsDao);
			saveGoogleDB.setShareNumber(shareNumber);
			saveNaverDB.setShareNumber(shareNumber);
			saveGoogleDB.start();
			saveNaverDB.start();
		} else {
			System.out.println("일하는 중");
		}
		
		System.out.println("스케쥴러 완료");
	}
}