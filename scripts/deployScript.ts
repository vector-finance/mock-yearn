import hardhat from "hardhat";

async function main() {
    console.log("deploy start");

    const addr = (await hardhat.ethers.getSigners())[0].getAddress();

    const CatToken = await hardhat.ethers.getContractFactory("CatToken")
    const catToken = await CatToken.deploy()
    console.log(`CatToken address: ${catToken.address}`)

    const DogToken = await hardhat.ethers.getContractFactory("DogToken")
    const dogToken = await DogToken.deploy()
    console.log(`DogToken address: ${dogToken.address}`)

    const Vault = await hardhat.ethers.getContractFactory("Vault")
    const catVault = await hardhat.upgrades.deployProxy(Vault, [
        catToken.address,
        addr,
        addr
    ]);
    console.log(`CatVault address: ${catVault.address}`)

    const dogVault = await hardhat.upgrades.deployProxy(Vault, [
        dogToken.address,
        addr,
        addr
    ]);
    console.log(`DogVault address: ${dogVault.address}`)
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
