Experiment 1:  
a. Illustration of Where Clause, AND, OR operations in MongoDB:  
• Create a Database and Collection  
use mydatabase // Switch to your database   
db.createCollection("users") // Create a collection named "users"  
• Insert Sample Documents into users Collection  
db.users.insertMany([  
{ name: "John ", age: 28, gender: "male" },  
{ name: "Jane ", age: 24, gender: "female" },  
{ name: "Mike ", age: 32, gender: "male" },  
{ name: "Emily ", age: 29, gender: "female" },  
{ name: "Chris ", age: 22, gender: "male" },  
{ name: "Sophia", age: 35, gender: "female" }  
])  
• Queries   
// Find documents where age is greater than 25 and gender is "male"   
db.users.find({ $and: [{ age: { $gt: 25 } }, { gender: "male" }] }) 
// Find documents where age is greater than 30 or gender is "female"  
db.users.find({ $or: [{ age: { $gt: 30 } }, { gender: "female" }] }) 
b. Execute the Commands of MongoDB and operations in MongoDB:  
• Queries   
// Insert document  
db.users.insertOne({ name: "Bob", age: 35, gender: "male" }) 
// Query document   
db.users.find({ age: { $gt: 30 } })  
// Update document  
db.users.updateOne({ name: "John" }, { $set: { age: 40 } }) 
// Delete document  
db.users.deleteOne({ name: "John" })  
// Projection  
db.users.find({}, { name: 1, age: 1 })  
___________________________________________________________________________________________________
_________ 
Experiment 2:  
a. Develop a MongoDB query to select certain fields and ignore some fields of 
the documents:  
(use database from experiment 1) 
// Select certain fields and ignore some fields   
db.users.find({}, { name: 1, age: 1, _id: 0 })  
b. Develop a MongoDB query to display the first 5 documents: 
// Display the first 5 documents   
db.users.find().limit(5)  
__________________________________________________________________________________________________
__ 
Experiment 3:  
Create and demonstrate how projection operators would be used:  
db.createCollection("students")  // Create a collection named "students" 
Database 
db.students.insertMany([ 
{ 
name: "Alice", 
age: 23, 
grades: [ 
{ subject: "Math", score: 85 }, 
{ subject: "Science", score: 78 }, 
{ subject: "English", score: 92 } 
] 
}, 
{ 
name: "Bob", 
age: 25, 
grades: [ 
{ subject: "Math", score: 65 }, 
{ subject: "Science", score: 88 }, 
{ subject: "English", score: 73 } 
] 
}, 
{ 
name: "Charlie", 
age: 27, 
grades: [ 
{ subject: "Math", score: 90 }, 
{ subject: "Science", score: 81 }, 
{ subject: "English", score: 76 } 
] 
}, 
{ 
name: "Diana", 
age: 22, 
grades: [ 
{ subject: "Math", score: 70 }, 
{ subject: "Science", score: 95 }, 
{ subject: "English", score: 89 } 
] 
}, 
{ 
name: "Ethan", 
age: 24, 
grades: [ 
{ subject: "Math", score: 88 }, 
{ subject: "Science", score: 67 }, 
{ subject: "English", score: 84 } 
] 
}, 
{ 
name: "Fiona", 
age: 26, 
grades: [ 
{ subject: "Math", score: 72 }, 
{ subject: "Science", score: 91 }, 
{ subject: "English", score: 80 } 
] 
} 
]) 
• Queries   
// $ projection operator   
db.students.find( 
{ "grades.score": { $gt: 80 } }, 
{ "grades.$": 1 } 
) 
// $elemMatch projection operator  
db.students.find( 
{}, 
{ grades: { $elemMatch: { score: { $gt: 80 } } } } 
) 
// $slice projection operator   
db.students.find({}, { grades: { $slice: 2 } })  
