pragma  solidity >=0.5.16;

contract SmartContract {
    string public contents;
    string public signature;

    constructor() public {
        contents = "";
        signature = "";
    }

    function setContents(string memory _contents) public{
        contents = _contents;
    }
    function signContents(string memory _signature) public{
        signature = string(abi.encodePacked(signature, ' ', _signature));
    }
    function getContents() public view returns(string memory){
        return contents;
    }
    function getSign() public view returns(string memory){
        return signature;
    }
    function say() public view returns(string memory){
        return string(abi.encodePacked(contents, ' sign:', signature));
    }
}

