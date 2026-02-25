// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract USDCRegistry {
    struct Listing {
        string name;
        string description;
        string url;
        address submitter;
        uint256 timestamp;
    }

    Listing[] public listings;

    function submitListing(string memory _name, string memory _description, string memory _url) public {
        listings.push(Listing({
            name: _name,
            description: _description,
            url: _url,
            submitter: msg.sender,
            timestamp: block.timestamp
        }));
    }

    function getAllListings() public view returns (Listing[] memory) {
        return listings;
    }
}
