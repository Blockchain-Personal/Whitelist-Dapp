//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Whitelist {
    
    // maximum number of addresses in the whiltelist
   uint public maxWhiteListAddresses;

    //Number of addresses in the whitelist at the moment
   uint8 public numAddressesWhitelisted;

   mapping(address =>bool) public whiteListAddresses;

    constructor(uint8 _maxWhiteListAddresses){
      maxWhiteListAddresses = _maxWhiteListAddresses;
    }

    function addAddressToWhiteList() public{
        require(numAddressesWhitelisted < maxWhiteListAddresses, "max limit reached" );
        require(!whiteListAddresses[msg.sender], "Sender already in the whitelist" );
        ++numAddressesWhitelisted;
        whiteListAddresses[msg.sender] = true;
    }



}