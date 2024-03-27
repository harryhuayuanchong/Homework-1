// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 private counter;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (counter == 0) {
            counter += 1;
            return 1230;
        } else {
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 classRoom = IClassroomV2(msg.sender);

        return classRoom.isEnrolled() ? 123 : 1230;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        return gasleft() > 7000 ? 5000 : 123;
    }
}
