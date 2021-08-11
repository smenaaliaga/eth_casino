// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BetContract {
    uint betCounter = 0;

    struct Bet {
        uint id;
        string name;
        string description;
        uint bet;
        bool isActive;
    }

    mapping (uint256 => Bet) public bets;

    function createBet(string memory _name, string memory _description, uint _bet) public returns (uint id) {
        bets[betCounter] = Bet(betCounter, _name, _description, _bet, true);
        betCounter++;
    }

    function placeBet(uint id, uint amount) public returns (bool success) { }
}