// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelBooking {
    address payable public owner;

    enum Statuses { Vacant, Occupied }
    Statuses public currentStatuses;

    constructor() {
        owner = payable(msg.sender);
        currentStatuses = Statuses.Vacant;
    }

    function booking() public payable {
        require(Statuses.Vacant == currentStatuses);
        require(msg.value >= 2);

        currentStatuses = Statuses.Occupied;
        owner.transfer(msg.value);
    }
}
