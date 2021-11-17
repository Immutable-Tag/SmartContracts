pragma solidity ^0.5.0;

contract ImmutableTag {

    struct Tag {
        string repoURL;
        string tagID;
        string commitHash;
    }

    // key for tags is "{repoURL}_{tagID}" for O(1) lookup
    // example: tags["https://github.com/Immutable-Tag/SmartContacts_v1.0.0"] will return a Tag object
    // and that Tag object will look like:
    // {
    //     repoURL: "https://github.com/Immutable-Tag/SmartContacts"
    //     tagID: "v1.0.0"
    //     commitHash: "66190b9fc987cb12c3a302c84123122e68ef6450"
    // }
    mapping(string => Tag) public tags;
}