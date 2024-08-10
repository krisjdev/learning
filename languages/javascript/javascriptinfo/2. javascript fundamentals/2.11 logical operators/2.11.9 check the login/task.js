let username = prompt("Login:");
let password;

if (username == "Admin") {
    password = prompt("Password:");
} else if (username == null || username == "") {
    alert("Cancelled");
} else {
    alert("I don't know you");
}


if (password == null || password == '' || password == undefined) {
    alert("Cancelled");
} else if (password == "TheMaster") {
    alert("Welcome!");
} else {
    alert("Wrong password");
}