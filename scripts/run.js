const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory("ERC721Token");
    const contractFactory = await nftContractFactory.deploy();
    await contractFactory.deployed();
    console.log("Contract deployed to..", contractFactory.address) 
}