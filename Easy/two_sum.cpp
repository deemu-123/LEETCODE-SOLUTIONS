// Problem: Two Sum
// Link: https://leetcode.com/problems/two-sum/
// Difficulty: Easy
// Approach: Hash Map

#include <bits/stdc++.h>
using namespace std;

vector<int> twoSum(vector<int>& nums, int target) {
    unordered_map<int,int> mp;
    for(int i=0;i<nums.size();i++){
        int rem = target - nums[i];
        if(mp.count(rem)){
            return {mp[rem], i};
        }
        mp[nums[i]] = i;
    }
    return {};
}
