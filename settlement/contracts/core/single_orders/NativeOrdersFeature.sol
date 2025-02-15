// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;
/*

import "../../migrations/LibMigrate.sol";
import "../../interfaces/IFeature.sol";
import "../../interfaces/INativeOrdersFeature.sol";
import "./NativeOrderSettlement.sol"; 

abstract contract NativeOrdersFeature is IFeature, NativeOrdersSettlement {
    string public constant override FEATURE_NAME = "LimitOrders";
    uint256 public immutable override FEATURE_VERSION = _encodeVersion(1, 3, 0);

    constructor(
        address zeroExAddress,
        IEtherToken weth,
        IStaking staking,
        FeeCollectorController feeCollectorController,
        uint32 protocolFeeMultiplier
    ) NativeOrdersSettlement(zeroExAddress, weth, staking, feeCollectorController, protocolFeeMultiplier) {}

    function migrate() external returns (bytes4 success) {
        _registerFeatureFunction(this.transferProtocolFeesForPools.selector);
        _registerFeatureFunction(this.fillLimitOrder.selector);
        _registerFeatureFunction(this._fillLimitOrder.selector);
        _registerFeatureFunction(this.cancelLimitOrder.selector);
        _registerFeatureFunction(this.batchCancelLimitOrders.selector);
        _registerFeatureFunction(this.cancelPairLimitOrders.selector);
        _registerFeatureFunction(this.cancelPairLimitOrdersWithSigner.selector);
        _registerFeatureFunction(this.batchCancelPairLimitOrders.selector);
        _registerFeatureFunction(this.batchCancelPairLimitOrdersWithSigner.selector);
        _registerFeatureFunction(this.getLimitOrderInfo.selector);
        _registerFeatureFunction(this.getLimitOrderHash.selector);
        _registerFeatureFunction(this.getProtocolFeeMultiplier.selector);
        _registerFeatureFunction(this.getLimitOrderRelevantState.selector);
        _registerFeatureFunction(this.batchGetLimitOrderRelevantStates.selector);
        _registerFeatureFunction(this.registerAllowedOrderSigner.selector);
        _registerFeatureFunction(this.isValidOrderSigner.selector);
        return LibMigrate.MIGRATE_SUCCESS;
    }
}
*/