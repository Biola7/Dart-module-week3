class UserAccount {
  // Private variables (prefixed with an underscore)
  String _username;
  String _password;

  // Constructor to initialize the username and password
  UserAccount(this._username, this._password);

  // Getter to retrieve the username (read-only access)
  String get username => _username;

  // Method to change the password with validation
  void changePassword(String oldPassword, String newPassword) {
    if (oldPassword == _password) {
      if (newPassword.length >= 6) {
        _password = newPassword;
        print('Password updated successfully!');
      } else {
        print('New password must be at least 6 characters long.');
      }
    } else {
      print('Old password is incorrect.');
    }
  }

  // Method to simulate login
  bool login(String username, String password) {
    if (username == _username && password == _password) {
      print('Login successful! Welcome, $_username.');
      return true;
    } else {
      print('Invalid username or password.');
      return false;
    }
  }
}

void main() {
  // Create a user account
  var user = UserAccount('dart_user', 'secure123');

  // Try logging in
  user.login('dart_user', 'wrongpassword'); // Invalid credentials
  user.login('dart_user', 'secure123'); // Valid credentials

  // Try changing the password
  user.changePassword('wrongpassword', 'newpassword'); // Old password incorrect
  user.changePassword('secure123', 'short'); // Password too short
  user.changePassword('secure123', 'newsecurepassword'); // Successful change

  // Attempt login with the new password
  user.login('dart_user', 'newsecurepassword'); // Valid credentials
}
