module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",    // Localhost (default: none)
      port: 7545,           // Standard Ethereum port (Ganache)
      network_id: "*",      // Match any network id (default: none)
    },
  },
  // Optional: Specify the default Solidity compiler version
  compilers: {
    solc: {
      version: "0.8.0",    // Set the Solidity version (you can change this based on your needs)
    },
  },
};
