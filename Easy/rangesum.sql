class NumArray {
    private int[] prefix;

    public NumArray(int[] nums) {
        prefix = new int[nums.length + 1];

        for (int i = 0; i < nums.length; i++) {
            prefix[i + 1] = prefix[i] + nums[i];
        }
    }

    public int sumRange(int left, int right) {
        return prefix[right + 1] - prefix[left];
    }
}
OUTPUT:
Input
["NumArray","sumRange","sumRange","sumRange"]
[[[-2,0,3,-5,2,-1]],[0,2],[2,5],[0,5]]
Output
[null,1,-1,-3]
Expected
[null,1,-1,-3]
