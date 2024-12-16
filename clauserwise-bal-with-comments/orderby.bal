import ballerina/io;
public function main() {
    int[] nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    int[] numsOrdered = from var i in nums
                        order by i
                        select i;

    io:println(numsOrdered);

    int[] numsOrderedDesc = from var i in nums
                            order by i descending
                            select i;

    io:println(numsOrderedDesc);
}


// int[] numsOrdered = Arrays.stream(nums)
//                 .sorted()
//                 .toArray();

// int[] numsOrderedDesc = Arrays.stream(nums)
//                 .boxed()
//                 .sorted(Comparator.reverseOrder())
//                 .mapToInt(Integer::intValue)
//                 .toArray();


