// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SimpleMath} from "../src/SimpleMath.sol";

contract SimpleMathTest is Test {
    SimpleMath simpleMath;

    function setUp() public {
        simpleMath = new SimpleMath();
    }

    function testAddFunction() public view {
        // Test case 1
        uint256 result1 = simpleMath.add(2, 3);
        assertEq(result1, 5, "Test case 1 failed: 2 + 3 != 5");

        // Test case 2
        uint256 result2 = simpleMath.add(10, 15);
        assertEq(result2, 25, "Test case 2 failed: 10 + 15 != 25");

        // Test case 3
        uint256 result3 = simpleMath.add(0, 0);
        assertEq(result3, 0, "Test case 3 failed: 0 + 0 != 0");

        // Test case 4
        uint256 result4 = simpleMath.add(123456, 654321);
        assertEq(result4, 777777, "Test case 4 failed: 123456 + 654321 != 777777");
    }
}

