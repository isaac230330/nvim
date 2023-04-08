const a: string = 1;

enum E {
  A,
  B,
  C
}

interface IUser {
  name: string;
  age: number;
  gender: 'male' | 'female'
}

class User implement IUser {
  constructor(public name: string, public age: number, public gender) {}
}

const
