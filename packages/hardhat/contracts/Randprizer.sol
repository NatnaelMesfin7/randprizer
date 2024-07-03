// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract ranprizer {
    address private Admin;
    address[] Campaine_owners;
    mapping(address => uint256) public Campaign_address_to_Amount;

    constructor() {
        Admin = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == Admin, "Caller is not the Admin");
        _;
    }

    function Create_campaign() public payable {
        Campaine_owners.push(msg.sender);
        Campaign_address_to_Amount[msg.sender] = msg.value;
    }

    function Participate_in_campaign(uint256 campaign_id) public payable {}

    function draw_winner() public {}

    // function withdraw
}
