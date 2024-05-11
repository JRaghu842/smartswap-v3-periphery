// SPDX-License-Identifier: GPL-2.0-or-later
import 'smartswap-v3-core/contracts/interfaces/ISmartSwapPool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for ISmartSwapPool;

    function countInitializedTicksCrossed(
        ISmartSwapPool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
