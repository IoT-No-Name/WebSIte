
function storeReg() {
  localStorage.setItem('FirstName', firstname.value);
  localStorage.setItem('LastName', lastname.value);
  localStorage.setItem('Email', email.value);
  localStorage.setItem('Password', password.value);
  localStorage.setItem('Type of user',$('input[name="typeofUser"]:checked').val());
}
