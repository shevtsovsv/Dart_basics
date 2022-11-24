void main() {
  ShortEmail user = ShortEmail("123@user.com");
  print(user.getMailSystem());

  ShortEmailAdmin admin = ShortEmailAdmin("123@admin.com");
  print(admin.getMailSystem());
}

class User {
  String email = "22@11.3";
  User(this.email);
}

class AdminUser extends User {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin Email {
  String mail = "";
  String getMailSystem() {
    mail = mail.substring(mail.indexOf("@")+1);
    return mail;
  }
}

class ShortEmail extends User with Email {
  ShortEmail(email) : super(email) {
    mail = email;
  }
}

class ShortEmailAdmin extends AdminUser with Email {
  ShortEmailAdmin(email) : super(email) {
    mail = email;
  }
}
