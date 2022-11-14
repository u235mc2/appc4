class User {
  var _name;
  var _email;
  var _password;
  var _genre;
  var _favoritos;
  var _date;

  User(this._name, this._email, this._password, this._genre, this._favoritos,
      this._date);

  get name => _name;

  set name(value) {
    _name = value;
  }

  get email => _email;

  get date => _date;

  set date(value) {
    _date = value;
  }

  get favoritos => _favoritos;

  set favoritos(value) {
    _favoritos = value;
  }

  get genre => _genre;

  set genre(value) {
    _genre = value;
  }

  get password => _password;

  set password(value) {
    _password = value;
  }

  set email(value) {
    _email = value;
  }
}