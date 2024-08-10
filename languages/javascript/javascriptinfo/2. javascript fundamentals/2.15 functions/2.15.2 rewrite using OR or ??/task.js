/* original:

function checkAge(age) {
  if (age > 18) {
    return true;
  } else {
    return confirm('Did parents allow you?');
  }
}

*/

function checkAge_OR(age) {
    //          v if false, the || operator will move onto the confirmation
    return (age > 18) || confirm("allowed?");
}

function checkAge_Q(age) {
    return age > 18 ? true : confirm("allowed?");
}