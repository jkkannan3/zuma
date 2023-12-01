function ValidateForm() {
    var nameInput = document.getElementById('name');
    var emailInput = document.getElementById('email');
    var usernameInput = document.getElementById('username');
    var passwordInput = document.getElementById('password');
    var confirmpasswordInput = document.getElementById('confirmpassword');

    // Validate name input
    if (nameInput.value.trim() === '') {
        alert('Please enter your name.');
        return false;
    }

    // Validate email input
    if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/.test(emailInput.value.trim())) {
        alert('Please enter a valid email address.');
        return false;
    }

    // Validate username input
    if (usernameInput.value.trim() === '') {
        alert('Please enter a username.');
        return false;
    }

    // Validate password input
    if (passwordInput.value.length < 8) {
        alert('Password must be at least 8 characters long.');
        return false;
    }

    // Validate confirm password input
    if (confirmpasswordInput.value !== passwordInput.value) {
        alert('Passwords do not match.');
        return false;
    }

    return true;
}
