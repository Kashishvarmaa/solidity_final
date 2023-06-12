// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public nameT = "NOTEBOOK";
    string public abbT = "BOOK";
    uint public supplyT = 0;

    // mapping variable here
    mapping(address=>uint)public bal;

    // mint function
    function mint (address _address, uint _val) public {
        supplyT += _val;
        bal[_address] += _val;
    }
    // burn function
     function burn (address _address, uint _val) public {
         if(bal[_address]>=_val){
        supplyT -= _val;
        bal[_address] -= _val;
        }
    }

}
