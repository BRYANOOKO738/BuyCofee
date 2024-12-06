// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Chai} from "../src/Chai.sol";


contract DeployChai is Script {
    function run() external returns (Chai) {
        // Retrieve the private key from environment variables
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        // Start the broadcast with the deployer's private key
        vm.startBroadcast(deployerPrivateKey);
        
        // Deploy the Chai contract
        Chai chai = new Chai();
        
        // Stop broadcasting transactions
        vm.stopBroadcast();
        
        // Log the deployed contract address
        console.log("Chai contract deployed at:", address(chai));
        
        return chai;
    }
}

    

