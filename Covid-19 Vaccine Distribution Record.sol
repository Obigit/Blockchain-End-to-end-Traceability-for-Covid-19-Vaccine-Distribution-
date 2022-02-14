
pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT
// Covid-19 Vaccine Distribution Record
// Author: Obinna Dominic 

contract MyStruct {

    struct vaccine_distribution {
        uint transaction_id;
        string destination;
        string organisation;
        string origin;
        uint price;
        uint quantity;
        bool recived;
    }
    vaccine_distribution record1;
    function set_Covid19_Distrubution_Details() public {
        
        record1 = vaccine_distribution (2312, "Croatia", "Croatian Health Insurance Fund (CHIF)", "Germany", 3000000000, 5000000, true);
       
   }

    function getCovid19_Distrubution_Details() public view returns (uint, string memory, string memory, string memory, uint, uint, bool) {
          return (record1.transaction_id, record1.destination, record1.organisation, record1.origin, record1.price, record1.quantity, record1.recived);
    }
}
   
