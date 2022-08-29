pragma solidity ^0.8.0;

contract Whitelist{
    uint8 public maxWhitelistAllowed;
    mapping(address => bool) public whitelistedAddress;

    uint public numAddressWhitelisted;

    constructor(uint8 _maxWhitelistAllowed) {
        maxWhitelistAllowed = _maxWhitelistAllowed;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddress[msg.sender], "Sender address is already whitelisted");
        require(numAddressWhitelisted < maxWhitelistAllowed);
        whitelistedAddress[msg.sender] = true;
        numAddressWhitelisted += 1;
    }

}