**1. maximum-depth-of-n-ary-tree** [LeeCode559](https://leetcode.com/problems/maximum-depth-of-n-ary-tree/) *

```c
// DFS solution
class Solution {
public:
    int maxDepth(Node* root) {
        if(root == nullptr) return 0;
        int max_depth = 0;
        for(Node* np : root->children)
            max_depth = max(max_depth, maxDepth(np));
        return 1 + max_depth;
    }
};
```
```c
// BFS solution
class Solution{
public:
    int maxDepth(Node* root){
        if(root == nullptr) return 0;
        queue<Node*> Q; Q.push(root);
        int depth = 0;
        while(!Q.empty()){
            for(int i = Q.size(); i > 0; --i){
                Node* q = Q.front(); Q.pop();
                for(Node* p : q->children) Q.push(p);
            }
            depth++;
        }
        return depth;
    }    
};
```
