// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Decentralized Tip Jar
/// @notice Allows anyone to send ETH tips to any recipient address and logs the tipping history
contract DecentralizedTipJar {
    // Emitted when someone sends a tip
    event TipSent(address indexed from, address indexed to, uint256 amount);

    // For each recipient, keep an array of tippers
    mapping(address => address[]) public tippers;
    
    function tip(address recipient) external payable {
        require(recipient != address(0), "Recipient cannot be zero address"); // Validate recipient

        (bool success, ) = payable(recipient).call{value: msg.value}(""); // Forward the ETH
        require(success, "ETH transfer failed"); // Revert if the transfer did not succeed

        tippers[recipient].push(msg.sender); // Add the tipper to the recipient's list of tippers

        emit TipSent(msg.sender, recipient, msg.value); // Log the tip event
    }
}
