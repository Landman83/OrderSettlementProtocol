// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import "../errors/LibRichErrorsV06.sol";
import "../errors/LibCommonRichErrors.sol";
import "../errors/LibOwnableRichErrors.sol";

/// @dev EIP712 helpers for matched orders features.
abstract contract FixinEIP712 {
    /// @dev The domain hash separator for the entire exchange proxy.
    bytes32 public immutable EIP712_DOMAIN_SEPARATOR;

    constructor(address exchangeAddress) {
        // Compute `EIP712_DOMAIN_SEPARATOR`
        uint256 chainId;
        assembly {
            chainId := chainid()
        }
        EIP712_DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256(
                    "EIP712Domain("
                    "string name,"
                    "string version,"
                    "uint256 chainId,"
                    "address verifyingContract"
                    ")"
                ),
                keccak256("MatchedOrdersExchange"),
                keccak256("1.0.0"),
                chainId,
                exchangeAddress
            )
        );
    }

    function _getEIP712Hash(bytes32 structHash) internal view returns (bytes32 eip712Hash) {
        return keccak256(abi.encodePacked(hex"1901", EIP712_DOMAIN_SEPARATOR, structHash));
    }
}