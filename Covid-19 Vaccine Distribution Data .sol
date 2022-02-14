// SPDX-License-Identifier: GPL-3.0
// Covid-19 Vaccine Distribution Data
// Author: Obinna Dominic Chukwunwendu 
pragma solidity ^0.8.0;

contract vaccine_distribution {
 address  public owner; 

   constructor(){
         owner = msg.sender; // 0x8e989FA5DD353E7813b252Ad07DeeD011Cc69d20
   }
        uint256 transaction_id;
        string destination;
        string organisation;
        string origin;
        uint256 price;
        uint256 quantity;
        bool recived;
 
 function Transaction_id(uint256 trans_id) public {
      transaction_id = trans_id;
 }
  
  function Origin(string memory Origin_data) public {
    origin = Origin_data;
  }
 
 function Organisation(string memory destination_data) public {
    organisation = destination_data;
  }
  function Destination(string memory country) public {
    destination = country;
  }

   function Price(uint256 num) public {
        price = num;
    }

  function Quntity(uint256 amount) public {
        quantity = amount;
    }

    function Recived(bool recived_items) public {
        recived = recived_items;
    }

  function getData() view public returns (uint, string memory, string memory, string memory, uint, uint, bool) {
    return  (transaction_id, destination, organisation, origin, price, quantity, recived);
  }
}
