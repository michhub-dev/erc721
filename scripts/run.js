const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory("Erc721Token");
    const contractFactory = await nftContractFactory.deploy();
    await contractFactory.deployed();
    console.log("Contract deployed to..", contractFactory.address) 
}
const runMain = async () => {
    try {
        await main();
        process.exit(0)
    } catch(error) {
       console.log("Couldn't deploy", error);
       process.exit(1);
    }

}
runMain(); 