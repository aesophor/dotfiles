Vim�UnDo� ]\gb����W����59��H���Psh�Î���              return { 0, 0 };            	       	   	   	    \��    _�                             ����                                                                                                                                                                                                                                                                                                                                                 v���    \��m     �                  #include <iostream>   #include <vector>       using namespace std;       class Solution {   public:   7    vector<int> twoSum(vector<int>& nums, int target) {   5        for (int i = 0; i < (int) nums.size(); i++) {   =            for (int j = i + 1; j < (int) nums.size(); j++) {   8                if (nums.at(i) + nums.at(j) == target) {   0                    return vector<int> { i, j };                   }               }   	        }   &        return vector<int> { -1, -1 };       }   };       int main() {   $    vector<int> input = { 3, 2, 4 };   2    for (auto num : Solution().twoSum(input, 6)) {           cout << num << endl;       }   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v���    \��m     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v���    \��o     �                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v���    \��u     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v���    \��v     �               NMemory Usage: 10.4 MB, less than 23.34% of C++ online submissions for Two Sum.5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v���    \��w     �                IRuntime: 12 ms, faster than 95.04% of C++ online submissions for Two Sum.5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v���    \��z     �                       return { 0, 0 };5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 v���    \��     �               +        return { 0, 0 }; // Question didn't5�_�                  	      /    ����                                                                                                                                                                                                                                                                                                                                                 v���    \��    �               /        return { 0, 0 }; // The question didn't5��