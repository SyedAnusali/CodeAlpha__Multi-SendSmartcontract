// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherSplitter {
    // Payable function to split Ether among recipients
    function splitEther(address[] calldata recipients) external payable {
        uint256 numRecipients = recipients.length;
        require(numRecipients > 0, "No recipients provided");
        require(msg.value > 0, "No Ether sent");
        require(msg.value % numRecipients == 0, "Ether not divisible equally");

        uint256 amountPerRecipient = msg.value / numRecipients;

        for (uint256 i = 0; i < numRecipients; i++) {
            (bool sent, ) = payable(recipients[i]).call{value: amountPerRecipient}("");
            require(sent, "Failed to send Ether");
        }
    }
}





//["0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2","0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2"];
