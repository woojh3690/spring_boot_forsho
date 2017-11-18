package saveDB;

import java.awt.Image;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import woo.forsho.dao.ContentsDao;
import woo.forsho.model.Contents;

public class SaveGoogleDB extends Thread{
	
	@Autowired
	private ContentsDao contentsDao;
	
	@Override
	public void run() {
		Document doc;
		try {
			String keyWord = "라이젠";
			String strUrl = "https://www.google.co.kr/search?q="+ keyWord +"&tbs=qdr:m,lr:lang_1ko&source=lnt&lr=lang_ko";
			doc = Jsoup.connect(strUrl).get();
			
			Elements elements = doc.select("h3.r");
			String[] titleArray = elements.eachText().toArray(new String[0]);
			String[] urlArray = new String[elements.size()];
			
			int i = 0;
			for (org.jsoup.nodes.Element item : elements.select("a")) {
				urlArray[i] = item.attr("abs:href");
				i++;
			}
			
			elements = doc.select("span.st");
			String[] previewArray = elements.eachText().toArray(new String[0]);
			
			for(i=0; i < titleArray.length; i++) {
				Contents contents = new Contents();
				contents.setSource("google"); //출처 검색엔진
				contents.setTitle(titleArray[i]); //제목
				contents.setLink(urlArray[i]); //링크
				contents.setDescription(previewArray[i]); //간단 내용
				
				//previewArray에 앞부분이 2로 시작하고 -로 끝나면 날짜 넣기
				String front = previewArray[i].substring(0, 14);
				if(front.startsWith("2") && front.endsWith("-")) { 
					contents.setPostdate(front.substring(0, front.length() - 1));
				} else {
					contents.setPostdate(" ");
				}
				
				contents.setImageurl(getImage(urlArray[i])); //넣는 소스 구하기 getImage(urlArray[i])
				contentsDao.save(contents);
			}
			
			if(titleArray.length == 10) {
			
			} else {
				System.out.println("saveGoogleDB의 파싱중 타이틀이 10개가 아님");
			}
			
			System.out.println("구글 완료");
		} catch (IOException e) {
			System.out.println("saveGoogleDB 오류");
			e.printStackTrace();
		}
	}
	
	private String getImage(String strUrl) {
		Document doc;
		String thumbnail = null;
		try {
			doc = Jsoup.connect(strUrl).get();
			Elements elements = doc.select("img");
			
			for(org.jsoup.nodes.Element item : elements) {
				String srcUrl = item.attr("abs:src");
				
				if (srcUrl.startsWith("http://") || srcUrl.startsWith("https://")) {
					/*if (srcUrl.contains(".png") || srcUrl.contains(".jpg")) { //png나 jpg확장자가 포함되면
						
					}*/
					int[] size = sizeOfImage(srcUrl);
					if ((size[0] > 281) && (size[1] > 199)) { //이미지의 크기가 일정 조건을 충족하면
						if ((size[1]/size[0] < 3) && (size[0]/size[1] < 3)) {
							thumbnail = srcUrl;
							break;
						}
					}
				}
			}
			
		} catch (IOException e) {
			System.out.println("getImage 오류");
			e.printStackTrace();
		}
		
		return thumbnail;
	}
	
	private int[] sizeOfImage(String strUrl) {
		int[] size = new int[] {-1, -1};
		
		try {
	        // Create a URL for the image's location
	        URL url = new URL(strUrl);

	        // Get the image
	        Image image = ImageIO.read(url);
	        
	        if (image != null) {
	        	size[0] = image.getWidth(null); //이미지 가로
	 	        size[1] = image.getHeight(null); //이미지 세로
	        }
	        System.out.println(size[0] + "/"+size[1]);
	    } catch(MalformedURLException e) {
	        e.printStackTrace();
	    } catch(IOException e) {
	        System.out.println("이미지 주소 오류");
	    } catch(NullPointerException e) {
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
	
	
}
