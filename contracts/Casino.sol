// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract CasinoContract {
    struct Bet {
        uint id;
        string name;
        string description;
        uint minBet;
        uint maxBet;
        bool isActive;
    }

    mapping (uint256 => Bet) public bets;
}