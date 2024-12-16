import ballerina/io;

type Employee record {
    string name;
    string department;
    int age;
};

public function main() {
    int[] nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int[] numsTimes10 = from var i in nums

                        select i * 10;

    io:println(numsTimes10);

    int[] numsGreaterThan10 = from var i in nums
                              where i > 2
                              select i;


    io:println(numsGreaterThan10);

    int[] numsGreaterThan10Times10 = from var i in nums
                                     where i > 2
                                     select i * 10;

    io:println(numsGreaterThan10Times10);

    int[] numsGreaterThan10Times10Ordered = from var i in nums
                                            where i > 2
                                            order by i
                                            select i * 10;
    
    io:println(numsGreaterThan10Times10Ordered);

    int[] numsGreaterThan10Times10OrderedLimit10 = from var i in nums
                                            where i > 2
                                            order by i descending
                                            limit 3
                                            select i * 10;
    
    io:println(numsGreaterThan10Times10OrderedLimit10);


    // Define a list of records
    Employee[] employees = [
        {name: "Alice", department: "HR", age: 30},
        {name: "Bob", department: "IT", age: 25},
        {name: "Charlie", department: "IT", age: 25},
        {name: "David", department: "Finance", age: 25},
        {name: "Eve", department: "HR", age: 28}
    ];

    // Use a query to group employees by department
    var groupedByDepartment = from var {department, name, age} in employees
                                group by department
                                select [name];

    var groupedByDepartment2 = from Employee emp in employees
                                let var name = emp.name group by var dept = emp.department
                                select {dept , names : [name]};

    

    // Iterate through the grouped result
    // foreach var emp in groupedByDepartment {
    //     io:println(emp);
    // }

    foreach var emp in groupedByDepartment2 {
        io:println(emp);
    }

    // var orders = [
    //     {orderId: 1, itemName: "A", price: 23.4, quantity: 2},
    //     {orderId: 1, itemName: "A", price: 20.4, quantity: 1},
    //     {orderId: 2, itemName: "B", price: 21.5, quantity: 3},
    //     {orderId: 1, itemName: "B", price: 21.5, quantity: 3}
    // ];

    // var items = from var {orderId, itemName} in orders
    //     group by orderId
    //     select [itemName];
    
    // // List of items per `orderId`
    // io:println(items);

    // var quantities = from var {itemName, quantity} in orders
    //     group by itemName
    //     select {itemName, quantity: sum(quantity)};

    // // List of quantity per item
    // io:println(quantities);

    // var income = from var {price, quantity} in orders
    //     let var totPrice = price*quantity
    //     // The `collect` clause creates a single group and all variables become
    //     // non-grouping keys
    //     collect sum(totPrice);
    
    // // Total Income from orders
    // io:println(income);

    
}