class User {
  var _name;
  var _email;
  var _password;
  var _genre;
  var _favorite;
  var _bornDate;

  User(this._name, this._email, this._password, this._genre, this._favorite,
      this._bornDate);

  get name => _name;

  set name(value) {
    _name = value;
  }

  get email => _email;

  get bornDate => _bornDate;

  set bornDate(value) {
    _bornDate = value;
  }

  get favorite => _favorite;

  set favorite(value) {
    _favorite = value;
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