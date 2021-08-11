const BetsContract = artifacts.require("BetsContract");

module.exports = function (deployer) {
  deployer.deploy(BetsContract);
};
