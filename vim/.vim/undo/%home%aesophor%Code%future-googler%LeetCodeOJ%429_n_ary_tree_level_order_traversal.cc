Vim�UnDo� e�w�q���������jf����̑�B��X�   ,   gMemory Usage: 33.9 MB, less than 79.54% of C++ online submissions for N-ary Tree Level Order Traversal.                              \�ʼ    _�                             ����                                                                                                                                                                                                                                                                                                                                                             \�ʩ     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \�ʫ     �          *       �          )    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \�ʹ     �          +       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             \�ʻ    �         ,      gMemory Usage: 33.9 MB, less than 79.54% of C++ online submissions for N-ary Tree Level Order Traversal.5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \�ʬ     �          +   )   // /*   // Definition for a Node.   class Node {   public:       int val;       vector<Node*> children;           Node() {}       -    Node(int _val, vector<Node*> _children) {           val = _val;           children = _children;       }   };   */   class Solution {   public:   0    vector<vector<int>> levelOrder(Node* root) {   #        vector<vector<int>> result;           if (!root) {               return result;   	        }                      queue<Node*> q;           q.push(root);           while (!q.empty()) {   ,            result.push_back(vector<int>());                               int size = q.size();   ,            for (int i = 0; i < size; i++) {   8                result.back().push_back(q.front()->val);   8                for (auto child : q.front()->children) {   "                    q.push(child);                   }                   q.pop();               }   	        }                      return result;       }   };5��