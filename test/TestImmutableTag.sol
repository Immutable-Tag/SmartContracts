pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ImmutableTag.sol";

contract TestImmutableTag {
  function testCreateTag() public {
    ImmutableTag immutableTag = ImmutableTag();
    string memory _repoURL = "";
    string memory _tagID = "";
    string memory _commitHash = "";

    immutableTag.createTag(_repoURL, _tagID, _commitHash);

    Tag memory tag = immutableTag.getTag(_repoURL, _tagID);
    Assert.equal(tag.commitHash, _commitHash, "Commit Hash should be the same");
  }
}
