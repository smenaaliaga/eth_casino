// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract BetContract {
    uint256 public betCounter = 0;

    struct Bet {
        uint256 id;
        string name;
        string description;
        uint bet;
        bool isActive;
    }

    mapping (uint256 => Bet) public bets;

    function createBet(string memory _name, string memory _description, uint _bet) public {
        bets[betCounter] = Bet(betCounter, _name, _description, _bet, true);
        betCounter++;
    }

    function placeBet(uint id, uint amount) public returns (bool success) { }
}