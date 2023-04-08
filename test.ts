const fetchUserName = (): string => {
	return 'this is string'
}

interface User {
	name: string;
}

enum Fuck {
	A,
	B,
	C
}

class A {
	constructor(public name: string) {
		console.log(name)
	}

	static con() {
		return 'con'
	}
}

const demo = new A('fuck')

A.con()

