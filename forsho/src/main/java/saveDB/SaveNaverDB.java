package saveDB;

import java.awt.Image;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;

import woo.forsho.dao.ContentsDao;
import woo.forsho.model.Contents;
import woo.forsho.model.NaverItem;
import woo.forsho.model.NaverItems;

public class SaveNaverDB extends Thread {
	private static int start = 1;
	private static final String clientId = "rXXbFGWXd4_XAYVf27qK";// 애플리케이션 클라이언트 아이디값";
	private static final String clientSecret = "vz4E71ngjS";// 애플리케이션 클라이언트 시크릿값";
	private static final String SEARCH = "blog";
	
	private ShareNumber shareNumber;

	@Autowired
	private ContentsDao contentsDao;

	@Override
	public void run() {
		shareNumber.setNaverIsWorking(true);
		System.out.println("네이버 시작 지점  : " + start);

		try {
			String text = URLEncoder.encode("스프링부트", "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/search/" + SEARCH + "?query=" + text + "&start=" + start; // json

			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			// con.setRequestProperty("start", "30");
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();

			NaverItems obj = new Gson().fromJson(response.toString(), NaverItems.class);

			for (NaverItem item : obj.getItems()) {
				Contents contents = new Contents();
				contents.setSource("naver");
				contents.setTitle(item.getTitle());
				contents.setLink(item.getLink());
				contents.setDescription(item.getDescription());
				if (item.getPostdate() == null) {
					contents.setPostdate(" ");
				} else {
					contents.setPostdate(item.getPostdate());
				}
				contents.setImageurl(getImage(item.getLink())); // 넣는 소스 구하기
				contentsDao.save(contents);

				if (start >= 11) {
					shareNumber.deleteNaver();
				}

			}
			start += 10;
			System.out.println("네이버 완료");
			shareNumber.setNaverIsWorking(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String getImage(String strUrl) {
		Document doc;
		String thumbnail = null;
		try {
			doc = Jsoup.connect(strUrl).get();
			Elements elements = doc.select("img");

			for (org.jsoup.nodes.Element item : elements) {
				String srcUrl = item.attr("abs:src");

				if (srcUrl.startsWith("http://") || srcUrl.startsWith("https://")) {
					/*
					 * if (srcUrl.contains(".png") || srcUrl.contains(".jpg")) { //png나 jpg확장자가 포함되면
					 * 
					 * }
					 */
					int[] size = sizeOfImage(srcUrl);
					if ((size[0] > 281) && (size[1] > 199)) { // 이미지의 크기가 일정 조건을 충족하면
						if ((size[1] / size[0] < 3) && (size[0] / size[1] < 3)) {
							thumbnail = srcUrl;
							break;
						}
					}
				}
			}

		} catch (IOException e) {
			System.out.println("getImage 오류");
		}

		return thumbnail;
	}

	private int[] sizeOfImage(String strUrl) {
		int[] size = new int[] { -1, -1 };

		try {
			// Create a URL for the image's location
			URL url = new URL(strUrl);

			// Get the image
			Image image = ImageIO.read(url);

			if (image != null) {
				size[0] = image.getWidth(null); // 이미지 가로
				size[1] = image.getHeight(null); // 이미지 세로
			}
			// System.out.println(size[0] + "/"+size[1]);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {

		} catch (NullPointerException e) {
			e.printStackTrace();
		}

		return size;
	}

	public ContentsDao getContentsDao() {
		return contentsDao;
	}

	public void setContentsDao(ContentsDao contentsDao) {
		this.contentsDao = contentsDao;
	}

	public ShareNumber getShareNumber() {
		return shareNumber;
	}

	public void setShareNumber(ShareNumber shareNumber) {
		this.shareNumber = shareNumber;
	}

}
