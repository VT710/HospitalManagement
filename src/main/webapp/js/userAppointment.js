let form = document.getElementById("form_main");

form.addEventListener("submit", validateForm);
function validateForm(e) {
  //e.preventDefault();

  // Get form input values
  let name = document.getElementById("fullname").value;
  let email = document.getElementById("email").value;
  let password = document.getElementById("password").value;
  let age = document.getElementById("age").value;
  let pno = document.getElementById("pno").value;

  // Define regular expressions for validation
  let emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  let passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
  let phoneRegex = /^\d{10}$/;
  // Perform validation
  if (name === "") {
    alert("Name is required");
    //nameAlert.innerHTML = "vikas";
    // nameAlert.style.display = "block";
    e.preventDefault();
    return false;
  } else if (name.includes("@")) {
    alert("Name should not contain the '@' symbol.");
    // nameAlert.innerHTML = "Name should not contain the '@' symbol.";
    // nameAlertat.style.display = "block";
    e.preventDefault();
    return false;
  } else if (/\d/.test(name)) {
    alert("Name should not contain numbers.");
    // nameAlertNumber.style.display = "block";
    e.preventDefault();
    return false;
  }
  if (!email.match(emailPattern)) {
    alert("Invalid email address");
    e.preventDefault();
    return false;
  }

  if (!password.match(passwordPattern)) {
    alert(
      "Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, and one number."
    );
    e.preventDefault();
    return false;
  }

  if (age <= 0 && age > 100) {
    alert("Please provide valid age.");
    e.preventDefault();
    return false;
  }

  // If all validation passes, the form will be submitted
  return true;
}
