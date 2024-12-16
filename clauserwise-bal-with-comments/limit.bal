import ballerina/io;
public function main() {
    int[] nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int[] numsLimit10 = from var i in nums
                        limit 3
                        select i;

    io:println(numsLimit10);
}

// int[] nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
//
// int[] numsLimit10 = Arrays.stream(nums)
//             .limit(3)
//             .toArray();
