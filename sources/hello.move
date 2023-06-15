module 0x42::hello {
    use std::debug;
    struct Person has drop {
        age: u8
    }

    public fun set_age(new_age: u8): u8 {
        let person = Person { age: new_age };
        debug::print(&person.age);
        return person.age
    }

    #[test]
    public fun test_set_age() {
        let age = set_age(10);
        debug::print(&age);
    }
}
