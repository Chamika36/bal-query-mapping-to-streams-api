import ballerina/io;
public function main() {
    int[] nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int[] numsTimes10 = from var i in nums
                        where i > 2
                        select i * 10;

    io:println(numsTimes10);
}

// int[] numsGreaterThan10 = Arrays.stream(nums)
//                 .filter(n -> n>2)
//                 .toArray();
//
// System.out.println(Arrays.toString(numsGreaterThan10));