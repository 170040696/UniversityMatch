/**
 * 
 */
async function sendEmailVerification()
{
	var user = firebase.auth().currentUser;
	var promise = user.sendEmailVerification()
	promise.catch(function(error) {
		alert(error.message);
	});
	return true;
}

async function registerUser(e){
	e.preventDefault()
 console.log("in registerUser student");
    var email  = document.getElementById('email').value;
	var password1  = document.getElementById('password1').value;
    var password2  = document.getElementById('password2').value;
	var username = document.getElementById('username').value;
	
	if(password1 === password2) {
		var promise = firebase.auth().createUserWithEmailAndPassword(email,password1).then(function(){
			sendEmailVerification().then(alert("A verification link has been sent to your email. Please check that to continue."));
			var userId = firebase.auth().currentUser.uid;
			const user = firebase.auth().currentUser;

			user.updateProfile({
			  displayName: username
			});
			
			document.getElementById("email").InnerHTML = firebase.auth().currentUser.uid;
			firebase.auth().signOut();
			window.location.replace('/addStudent/'+userId);
		});
		promise.catch(e => alert(e.message));
	}
	else {
		document.getElementById("alert").innerHTML = "The passwords don't match";
	}
	
}
async function registerCollegeUser(e){
	e.preventDefault()
   console.log("in registerCollegeUser");

    var email  = document.getElementById('email').value;
	var password1  = document.getElementById('password1').value;
    var password2  = document.getElementById('password2').value;
	var username = document.getElementById('username').value;
	
	if(password1 === password2) {
		var promise = firebase.auth().createUserWithEmailAndPassword(email,password1).then(function(){
			sendEmailVerification().then(alert("A verification link has been sent to your email. Please check that to continue."));
			var userId = firebase.auth().currentUser.uid;
			const user = firebase.auth().currentUser;

			user.updateProfile({
			  displayName: username
			});
			
			document.getElementById("email").InnerHTML = firebase.auth().currentUser.uid;
		     /* firebase.auth().signOut();*/
		    window.location.replace("/addCollege");
			//window.location.replace('/addCollege/'+userId);
			//	window.location.href = "/collegeLogin";
		});
		promise.catch(e => alert(e.message));
	}
	else {
		document.getElementById("alert").innerHTML = "The passwords don't match";
	}
	console.log(userId);

}
	
/*async function loginUser(e){
	e.preventDefault()

    var email  = document.getElementById('email');
    var password  = document.getElementById('password');
	
	var promise = firebase.auth().signInWithEmailAndPassword(email.value,password.value).then(function(){
		var user = firebase.auth().currentUser;
		if(user.emailVerified)
		{
			window.location.href = "/studentHomepage";
		}
		else
		{
			alert("You are not verified yet!")
			sendEmailVerification().then(alert("Email verification sent!"));
			firebase.auth().signOut();
		}
	});
	promise.catch(e => alert(e.message));
}*/

async function loginUser(e) {
  e.preventDefault();

  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  try {
    // Sign in the user
    const userCredential = await firebase.auth().signInWithEmailAndPassword(email, password);
    const user = userCredential.user;

    // Immediately check verification status
    if (!user.emailVerified) {
      // If not verified, sign out and show message
      await firebase.auth().signOut();
      window.location.href = "/login";
      alert("Please verify your email before logging in. Check your inbox.");
      return; // Stop further execution
    }

    // Only verified users get redirected
    window.location.href = "/studentHomepage";
    
  } catch (error) {
    // Handle all errors (wrong password, user not found, etc.)
    alert(error.message);
    
    // Optional: Clear password field on error
    document.getElementById('password').value = '';
  }
}

/*async function loginCollege(e){
	e.preventDefault()
console.log("in loginCollege js file");
    var email  = document.getElementById('email');
    var password  = document.getElementById('password');
	
	var promise = firebase.auth().signInWithEmailAndPassword(email.value,password.value).then(function(){
		var user = firebase.auth().currentUser;
		if(user.emailVerified)
		{
			window.location.href = "/adminFrontPage";
			//window.location.href = "/adminFrontPage/email";
		}
		else
		{
			alert("You are not verified yet!")
			sendEmailVerification().then(alert("Email verification sent!"));
			firebase.auth().signOut();
		}
	});
	promise.catch(e => alert(e.message));
}*/


async function loginCollege(e) {
  e.preventDefault();

  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  try {
    // Sign in the user
    const userCredential = await firebase.auth().signInWithEmailAndPassword(email, password);
    const user = userCredential.user;

    // Immediately check verification status
    if (!user.emailVerified) {
      // If not verified, sign out and show message
      await firebase.auth().signOut();
      window.location.href = "/collegeLogin";
      alert("Please verify your email before logging in. Check your inbox.");
      return; // Stop further execution
    }

    // Only verified users get redirected
   // window.location.href = "/adminFrontPage";
    window.location.replace('/adminFrontPage/'+email);
    
  } catch (error) {
    // Handle all errors (wrong password, user not found, etc.)
    alert(error.message);
    
    // Optional: Clear password field on error
    document.getElementById('password').value = '';
  }
}

