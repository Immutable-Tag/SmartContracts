pragma solidity ^0.5.0;

contract ImmutableTag {

    struct Tag {
        string repoURL;
        string tagID;
        string commitHash;
    }
}