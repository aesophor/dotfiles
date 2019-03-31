Vim�UnDo� �v�����^q���}��ʴ0���{�W���   (    #ifndef WMDERLAND_TREE_NODE_HPP_                             \��c    _�                            ����                                                                                                                                                                                                                                                                                                                                                             \x �    �         (      #include "util.hpp"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \xi     �         (       #define WMDERLAND_TREE_NODE_HPP_5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \xj    �          (       #ifndef WMDERLAND_TREE_NODE_HPP_5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v���    \��^     �                B    void set_tiling_direction(tiling::Direction tiling_direction);�                /    tiling::Direction tiling_direction() const;�                $    void set_client(Client* client);�                    Client* client() const;�                &    void set_parent(TreeNode* parent);�                    TreeNode* parent() const;�                3    const std::vector<TreeNode*>& children() const;�                &    TreeNode* GetRightSibling() const;�                %    TreeNode* GetLeftSibling() const;�                :    void InsertChildAfter(TreeNode* child, TreeNode* ref);�                &    void RemoveChild(TreeNode* child);�                #    void AddChild(TreeNode* child);�                    bool IsLeaf() const;�                    virtual ~TreeNode();�   
                 TreeNode(Client* client);5�_�                     !        ����                                                                                                                                                                                                                                                                                                                            !           %   (       v���    \��b    �   $   &          (    tiling::Direction tiling_direction_;�   #   %              Client* client_;�   !   #              TreeNode* parent_;�       "          %    std::vector<TreeNode*> children_;5��