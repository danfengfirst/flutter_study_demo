void main() {
  var addressBookBuilder1 = AddressBookBuilder();
  addressBookBuilder1.name = "danfeng";
  addressBookBuilder1.email = 'danfeng@example.com';
  var addressBook1 = addressBookBuilder1.build();
  print('AddressBook1___'+addressBook1.name);
//级联操作
  var addressBook2 = AddressBookBuilder()
    ..name = "danfeng"
    ..email = 'danfeng@example.com'
    ..build();
  print('AddressBook2___'+addressBook2.email);

  //区别:.的话就不能继续给其他属性赋值了
  AddressBookBuilder().name="danfeng";

  //级联操作嵌套
  var addressBook3 = (AddressBookBuilder()
        ..name = 'danfeng'
        ..email = 'danfeng@example.com'
        ..phone = (PhoneNumberBuilder()
              ..number = '123-456'
              ..label = 'home')
            .build())
      .build();
  print('AddressBook3___'+addressBook3.phone.number);
}

class AddressBook {
  String name;
  String email;
  PhoneNumber phone;

  AddressBook(this.name, this.email, this.phone);
}

class AddressBookBuilder {
  String name;
  String email;
  PhoneNumber phone;

  AddressBook build() {
    return new AddressBook(name, email, phone);
  }
}

class PhoneNumber {
  String number;
  String label;

  PhoneNumber(this.number, this.label);
}

class PhoneNumberBuilder {
  String number;
  String label;

  PhoneNumber build() {
    return new PhoneNumber(number, label);
  }
}
