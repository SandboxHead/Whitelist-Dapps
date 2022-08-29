const hre = require("hardhat");

async function main() {
  const whitelistContract = await hre.ethers.getContractFactory("Whitelist");
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  await deployedWhitelistContract.deployed();


  console.log(
    `Whitelist contract deployed at: ${deployedWhitelistContract.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
