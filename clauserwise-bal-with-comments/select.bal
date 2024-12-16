import ballerina/io;
public function main() {
    int[] nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int[] numsTimes10 = from var i in nums
                        select i * 10;

    io:println(numsTimes10);
}


// int[] numTims10 = Arrays.stream(nums)
//                 .map(n-> n*10)
//                 .toArray();
