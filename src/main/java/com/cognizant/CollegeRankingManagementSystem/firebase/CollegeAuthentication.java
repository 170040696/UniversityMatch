package com.cognizant.CollegeRankingManagementSystem.firebase;

import org.springframework.stereotype.Component;

/*
 * This is the Administrator firebase project information.
 * This class contains the firebase project information to initialize the firebase in the JSP page.
 * The keys are fetched using the Controller class through this class and sent to the JSP file.
 * The Java Script is used for the firebase functions.
 */

@Component
public class CollegeAuthentication {
//old firebase project deatils
//	private String apiKey = "AIzaSyBdEdftRcsKKikySNTf131WC9khUBB67zU";
//	private String authDomain = "college-ranking-system.firebaseapp.com";
//	private String projectId = "college-ranking-system";
//	private String storageBucket = "college-ranking-system.appspot.com";
//	private String messagingSenderId = "494464462526";
//	private String appId = "1:494464462526:web:9fac42a7b48eae31e278ef";
	
	//new firebase project details
	private String apiKey = "AIzaSyBHMu4Y_Vqy1mK-ihobNg7kowhF2HG7d94";
	private String authDomain = "collegerankingsystem-college.firebaseapp.com";
	private String projectId = "collegerankingsystem-college";
	private String storageBucket = "collegerankingsystem-college.firebasestorage.app";
	private String messagingSenderId = "281566524027";
	private String appId = "1:281566524027:web:6a5a46cbd22677dc6ee8de";
	


	public CollegeAuthentication() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CollegeAuthentication(String apiKey, String authDomain, String projectId, String storageBucket,
			String messagingSenderId, String appId) {
		super();
		this.apiKey = apiKey;
		this.authDomain = authDomain;
		this.projectId = projectId;
		this.storageBucket = storageBucket;
		this.messagingSenderId = messagingSenderId;
		this.appId = appId;
	}

	public String getApiKey() {
		return apiKey;
	}

	public void setApiKey(String apiKey) {
		this.apiKey = apiKey;
	}

	public String getAuthDomain() {
		return authDomain;
	}

	public void setAuthDomain(String authDomain) {
		this.authDomain = authDomain;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getStorageBucket() {
		return storageBucket;
	}

	public void setStorageBucket(String storageBucket) {
		this.storageBucket = storageBucket;
	}

	public String getMessagingSenderId() {
		return messagingSenderId;
	}

	public void setMessagingSenderId(String messagingSenderId) {
		this.messagingSenderId = messagingSenderId;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	@Override
	public String toString() {
		return "CollegeAuthentication [apiKey=" + apiKey + ", authDomain=" + authDomain + ", projectId=" + projectId
				+ ", storageBucket=" + storageBucket + ", messagingSenderId=" + messagingSenderId + ", appId=" + appId
				+ "]";
	}
}
