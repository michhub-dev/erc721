// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.1; 
// Import OpenZeppelin Contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

//Inherit the imported contract
contract ERC721Token is ERC721URIStorage {
 // this helps to keep track of tokenId
    using Counters for Counters.Counter; 
    Counters.Counter private _tokenIds;

// pass the token name and symbol 
    constructor() ERC721("Oiler","O") {
        console.log("ERC721");
    }
    // Function to mint nft
    function mintNft () public {
        // get current tokenId 
        uint newTokenId = _tokenIds.current();
        //mint nft to the sender
        _SafeMint(msg.sender, newTokenId);

        //nft data
        _setTokenUrI(newTokenId, blabla);
        
        //Increment tokenId for the next nft that will be minted
        _tokenIds.Increment();
    }
}