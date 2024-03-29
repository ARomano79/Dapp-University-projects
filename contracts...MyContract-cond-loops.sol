pragma solidity ^0.6.0;
// SPDX-License-Identifier: unsure 

// Lesson #5 - Conditionals (if/else) and Loops 

contract MyContract {

    // loops
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;
        for(uint i = 0; i < numbers.length; i++) { if(isEvenNumber(numbers[i])) {
            count ++;
        } 
        }
        return count;
    }

    // conditionals (if/else)
        function isEvenNumber(uint _number) public view returns(bool) {
            if(_number % 2 == 0) {
                return true;
            } else {
                return false;
            }
        }
}