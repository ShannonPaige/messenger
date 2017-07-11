alice = User.create(name: "Alice", password: "password")
bob = User.create(name: "Bob", password: "password")
eve = User.create(name: "Eve", password: "password")

Message.create(body: "Hi Bob", sender_id: alice.id, receiver_id: bob.id)
Message.create(body: "Hi Eve", sender_id: alice.id, receiver_id: eve.id)
Message.create(body: "Hi Alice", sender_id: bob.id, receiver_id: alice.id)
