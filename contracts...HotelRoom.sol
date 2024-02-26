pragma solidity ^0.6.0;
// SPDX-License-Identifier: unsure

contract HotelRoom {

    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
 
    address payable public owner;

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    /* 
    
    function book() external payable {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
    } 
    --refactored to: -- 
    
    */ 

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
    require(msg.value >= _amount, "Not enough Ether provided.");
    _;
}


/* 
    function book() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

    changed to: 

*/

    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

event Occupy(address _occupant, uint _value);


}