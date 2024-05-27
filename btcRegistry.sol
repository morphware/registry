// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract BTCRegistry {
    // Mapping from Ethereum address to BTC address
    mapping(address => string) private btcAddresses;

    // Event that is emitted when a BTC address is set
    event BTCAddressSet(address indexed ethAddress, string btcAddress);

    // Function to set the BTC address for the sender's Ethereum address
    function setBTCAddress(string memory btcAddress) public {
        btcAddresses[msg.sender] = btcAddress;
        emit BTCAddressSet(msg.sender, btcAddress);
    }

    // Function to get the BTC address for a given Ethereum address
    function getBTCAddress(address ethAddress) public view returns (string memory) {
        return btcAddresses[ethAddress];
    }
}

