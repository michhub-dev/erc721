// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9; 

contract ERC721Token {
    
    constructor() erc721("Oiler","O") {
        console.log("ERC721")
    }
}