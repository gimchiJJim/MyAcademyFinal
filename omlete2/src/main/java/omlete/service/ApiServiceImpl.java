package omlete.service;

import java.io.BufferedReader;
import java.io.Console;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.ContentsDAO;
import omlete.dto.Contents;

@Service
@RequiredArgsConstructor
public class ApiServiceImpl implements ApiService{
	
	@Override
	public List<String> getmid(int page) {	
		List<String> list = new ArrayList();
		
		// 인증키 (개인이 받아와야함)
		String key = "2f619d605e8a65b90a65eceaec054524";
	
		// 파싱한 데이터를 저장할 변수
		String result = "";
		String mid="";
		
		try {
			//URL url = new URL("https://api.themoviedb.org/3/movie/38757?api_key="
			//		+ key + "&watch_region=KR&language=ko");
			
			//첫번쩨 url 페이지당 20개씩 영화정보 출력
			URL url = new URL("https://api.themoviedb.org/3/discover/movie?api_key="
					+ key + "&watch_region=KR&language=ko");
	
			BufferedReader bf;
	
			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
	
			result = bf.readLine();   		
			
	    	JSONParser jsonParser = new JSONParser();
	    	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	    	
	    	JSONArray results = (JSONArray) jsonObject.get("results");
	    	for(int i=0;i<results.size();i++) {
		    	String rn = null;
		    	JSONObject r = (JSONObject) results.get(i);
	    		rn=String.valueOf(r.get("id")) ;
	    		mid = rn;
	    		list.add(mid);
	    	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Contents> getMovieList() {
		List<Contents> info = null;
		
		// 인증키 (개인이 받아와야함)
		String key = "2f619d605e8a65b90a65eceaec054524";
	
		// 파싱한 데이터를 저장할 변수
		String result = "";
		String actresult = "";
		String imgresult = "";
		String result1 = "";
		String mid="";
		String name="";
		String countryname="";
		String actname="";
		
		Array arr[]=null;
		int a=0;
		//int page=0;
		try {
			info = new ArrayList<Contents>();
			//URL url = new URL("https://api.themoviedb.org/3/movie/38757?api_key="
			//		+ key + "&watch_region=KR&language=ko");
			
			//첫번쩨 url 페이지당 20개씩 영화정보 출력
			URL url = new URL("https://api.themoviedb.org/3/discover/movie?api_key="
					+ key + "&watch_region=KR&language=ko");
	
			BufferedReader bf;
	
			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
	
			result = bf.readLine();   		
			
	    	JSONParser jsonParser = new JSONParser();
	    	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	    	
	    	JSONArray results = (JSONArray) jsonObject.get("results");
	    	
	    	String rn = null;
	    	for(int i=0;i<results.size();i++) {
	    	
	    		name = "";
	    		JSONObject r = (JSONObject) results.get(i);
	    		rn=String.valueOf(r.get("id")) ;
	    		
	    		mid = rn;
	        	System.out.println("mid:"+mid);
	
	    		//2번째 url 1가지 영화에 대한 상세정보 보여줌
	    		URL url1 = new URL("https://api.themoviedb.org/3/movie/"+mid+"?api_key="
	    				+ key + "&watch_region=KR&language=ko&append_to_response=credits,release_dates");
	        	
	        	BufferedReader bf1;
	
	    		bf1 = new BufferedReader(new InputStreamReader(url1.openStream(), "UTF-8"));
	
	    		result1 = bf1.readLine();
	    		
	        	
	        	System.out.println("[영화 id로 검색]");
	        	JSONParser jsonParser1 = new JSONParser();
	        	JSONObject jsonObject1 = (JSONObject)jsonParser1.parse(result1);
	        	
	        	//출연진(감독, 작가, 배우)정보를 가져옴
	        	JSONObject credits = (JSONObject)jsonObject1.get("credits");           
	        	
	        	//장르 id name 값 가져옴
	        	JSONArray genres = (JSONArray) jsonObject1.get("genres");
	        	//제작 나라 정보를 가져옴
	        	JSONArray procoun = (JSONArray) jsonObject1.get("production_countries");
	        	
	        	JSONArray cast = (JSONArray) credits.get("cast");
	        	
	        	JSONObject release_dates = (JSONObject)jsonObject1.get("release_dates"); 
	        	JSONArray rdresult = (JSONArray) release_dates.get("results");
	        	//System.out.println("rdresult"+rdresult);
	        	boolean fkr=false;
	        	//System.out.println("rdresult"+rdresult);
	        	for(int q=0;q<rdresult.size();q++) {
	        		JSONObject ratelist=(JSONObject)rdresult.get(q);
	        		if(ratelist.get("iso_3166_1").equals("KR")) {
	        			fkr=true;
	        			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
	        			for(int w=0;w<release_dates1.size();w++) {				 
	            			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
	            			System.out.println("certification="+rdresult1.get("certification"));
	            			if(rdresult1.get("certification")!=null) {
	            				break;
	            			}
	            			//System.out.println("release_dates1="+release_dates1);
	            			
	        			}
	        			break;
	        			
	        		}	
	        		
	        	}
	        	
	        	//연령등급
	        	String certificationValue = "";
	        	if(!fkr) {
	        		outerLoop:
	        		for(int t = 0; t < rdresult.size(); t++) {
	        			
	            			JSONObject ratelist=(JSONObject)rdresult.get(t);
	            		
	            			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
	            			for(int w=0;w<release_dates1.size();w++) {				 
	                			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
	                			Object certificationObj = rdresult1.get("certification");
	                			if(certificationObj instanceof String) {
	                				String certification = (String) certificationObj;
	                	            if (!certification.isEmpty()) { // certification 값이 비어 있지 않은 경우에만 처리
	                	                certificationValue = certification; // certification 값이 비어 있지 않으면 저장
	                	                System.out.println("certification(없을때)="+certificationValue);
	                	                break outerLoop; // 바깥쪽 루프도 종료
	                	            }
	                			}			                   				
	            			}
	            	}	
	
	        	}
	        	
	        	//장르 이름만 모두 더해서 name에 저장
	        	for(int j=0;j<genres.size();j++) {
	        		
	        		JSONObject genres_genNm=(JSONObject)genres.get(j);
	        		name+=genres_genNm.get("name")+" ";
	        		//System.out.println("genres : " + genres_genNm.get("name"));
	        	}
	        	
	        	JSONArray crew = (JSONArray) credits.get("crew");
	        	
	        	//작가
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Writing")) {
	            		
	        			System.out.println("작가:"+(String)crews.get("original_name"));
	        			break;
	        		}
	        	}
	        	//감독
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Directing")) {
	            		
	        			System.out.println("감독:"+(String)crews.get("original_name"));
	        			break;
	        		}
	        	}
	        	
	        	a=0;
	        	for(int k=0; k<cast.size(); k++) {
	        		
	        		JSONObject castlist=(JSONObject)cast.get(k);
	        		URL acturl = new URL("https://api.themoviedb.org/3/person/"+castlist.get("id")+"?api_key="
	        				+ key + "&append_to_response=credits");
	        		
	        		BufferedReader actbf;
	
	        		actbf = new BufferedReader(new InputStreamReader(acturl.openStream(), "UTF-8"));
	
	        		actresult = actbf.readLine();   		
	        		
	            	JSONParser actjsonParser = new JSONParser();
	            	JSONObject actjsonObject = (JSONObject)actjsonParser.parse(actresult);
	        		JSONArray also_known_as = (JSONArray) actjsonObject.get("also_known_as");
	        		
	        		System.out.print("배우 : ");
	        		if(castlist.get("known_for_department").equals("Acting")) {
	        			for(int an=0;an<also_known_as.size();an++) {
	
	        				if(((String) also_known_as.get(an)).matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*")) {
	        					System.out.print("actTname:"+also_known_as.get(an));
	        					break;
	        				}
	        				
	        			}     			
	        			
	        			System.out.print("actname : " + castlist.get("name"));
	        			System.out.print(" actid : " + castlist.get("id"));
	        			System.out.println(" profile_path : " + castlist.get("profile_path"));            			        
	        			//System.out.println("=================================================");
	        			
	        			a++;
	        			   			
	        		} 
	        		if(a==3) {
	    				break;
	    			}
	        	}
	        	
	        	//영화 사진 가져오기
	    		URL imgurl = new URL("https://api.themoviedb.org/3/movie/"+jsonObject1.get("id")+"/images?api_key="
	    				+ key);
	    		
	    		BufferedReader imgbf;
	
	    		imgbf = new BufferedReader(new InputStreamReader(imgurl.openStream(), "UTF-8"));
	
	    		imgresult = imgbf.readLine();   		
	    		
	        	JSONParser imgjsonParser = new JSONParser();
	        	JSONObject imgjsonObject = (JSONObject)imgjsonParser.parse(imgresult);
	        	JSONArray backdrops = (JSONArray) imgjsonObject.get("backdrops");
	        	System.out.print("사진=");
	        	for(int o=0; o<3; o++) {
	        		JSONObject imgp=(JSONObject) backdrops.get(o);
	        		System.out.print(imgp.get("file_path")+"\t");
	        	
	        	}
	        	System.out.println();
	        	
	        	
	        	
	        	
	        	JSONObject pron=(JSONObject)procoun.get(0);
	        	countryname=(String) pron.get("name");
	        	  
	        	//영화정보
	        	System.out.println("id : " + jsonObject1.get("id"));
	        	System.out.println("type : 영화");
	        	System.out.println("original_title : " + jsonObject1.get("original_title"));
	        	System.out.println("title : " + jsonObject1.get("title"));
	        	System.out.println("poster_path : https://image.tmdb.org/t/p/original" + jsonObject1.get("poster_path"));
	        	System.out.println("overview : " + jsonObject1.get("overview"));
	        	//System.out.println("genres : " + jsonObject1.get("genres"));
	        	System.out.println("genres name: " + name);
	        	//System.out.println("production_countries : " + jsonObject1.get("production_countries"));
	        	System.out.println("production_countries name: " + countryname);
	        	System.out.println("release_date : " + jsonObject1.get("release_date"));
	        	System.out.println("runtime : " + jsonObject1.get("runtime")+"분");         	
	        	System.out.println("tagline : " + jsonObject1.get("tagline"));
	        	
	        	Contents vo = new Contents();
	        	vo.setContentsNo(Integer.parseInt(String.valueOf(jsonObject1.get("id"))));
	        	info.add(vo);
	        	
	        	System.out.println("=================================================");
	        	
	    	}
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return info;
	}


	
	
}
