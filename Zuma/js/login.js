function ValidateForm() {
    var usernameInput = document.getElementById('username');
    var passwordInput = document.getElementById('password');

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
    return true;
}