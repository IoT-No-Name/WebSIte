var name = document.getElementById('username');
var pw = document.getElementById('pw');

function store() {
    localStorage.setItem('savedData', JSON.stringify([username.value,password.value]));
    localStorage.setItem('Type of user',$('input[name="options"]:checked').val());
    object1 = JSON.parse(localStorage.getItem('savedData'));
}

function check() {

    // stored data from the register-form
    var storedName = localStorage.getItem('username');
    var storedPw = localStorage.getItem('pw');

    // check if stored data from register-form is equal to data from login form
		if(username.value == storedName && password.value == storedPw) {
        alert('You are logged in.');
    }else {
        alert('ERROR.');
    }
}
