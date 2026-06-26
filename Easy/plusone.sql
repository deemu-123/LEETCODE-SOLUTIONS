class Solution {
    public int[] plusOne(int[] digits) {
        for(int i = digits.length - 1; i >= 0; i--) {
            if(digits[i] < 9) {
                digits[i]++;
                return digits;
            }
            digits[i] = 0;
        }

        // If all digits were 9
        int[] result = new int[digits.length + 1];
        result[0] = 1;
        return result;
    }
}
OUTPUT:
Input
digits =
[1,2,3]
Output
[1,2,4]
Expected
[1,2,4]
