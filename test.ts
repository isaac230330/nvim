const fetchUserName = (): string => {
	return 'this is string'
}

interface User {
	name: string;
}

enum Fuck {
	A,
	B,
	C,
	D,
	E,
	F
}

class A {
	public age: number = 'string';
	constructor(public name: string) {
		console.log(name)
	}

	static con() {
		return 'con';
	}
}

const demo = new A('fuck')

A.con()

console.log(demo.age)
