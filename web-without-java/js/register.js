
function storeReg() {
  localStorage.setItem('registerDetails', JSON.stringify([firstname.value,lastname.value,
                                                          email.value, password.value]));
  localStorage.setItem('Type of user',$('input[name="typeofUser"]:checked').val());
  object1= JSON.parse(localStorage.getItem('registerDetails'));
}

window.onload = function () {
   document.getElementById("password").onchange = validatePassword;
    document.getElementById("confirm_password").onchange = validatePassword;
  }
  function validatePassword(){
    var pass2=document.getElementById("password").value;
    var pass1=document.getElementById("confirm_password").value;
    if(pass1!=pass2)
     document.getElementById("password").setCustomValidity("Passwords Don't Match");
     else
      document.getElementById("confirm_password").setCustomValidity('');
      //empty string means no validation error
    }
