class LoginDetails {

  static Map<String, String> details = {
    "user1": "pass1",
    "user2": "pass2"
  };


  static checkUser(String user){
    return details.containsKey(user);
  }

  static checkPass(String user, String pass) {
    return details[user] == pass;
  }

}