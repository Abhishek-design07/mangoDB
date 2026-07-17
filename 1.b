use mydatabase 
db.createCollection("users")   

db.users.insertMany([  
{ name: "John ", age: 28, gender: "male" },  
{ name: "Jane ", age: 24, gender: "female" },  
{ name: "Mike ", age: 32, gender: "male" },  
{ name: "Emily ", age: 29, gender: "female" },  
{ name: "Chris ", age: 22, gender: "male" },  
{ name: "Sophia", age: 35, gender: "female" }  
]) 
db.users.insertOne({ name: "Bob", age: 35, gender: "male" })
db.users.find({ age: { $gt: 30 } }) 
db.users.updateOne({ name: "John" }, { $set: { age: 40 } })
db.users.deleteOne({ name: "John" })  
db.users.find({}, { name: 1, age: 1 })  
