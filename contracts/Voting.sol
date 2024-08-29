// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Vote {
        uint yes;
        uint no;
    }

    mapping(string => Vote) public votes;
    string[] public topics;

    function createVote(string memory _topic) public {
        require(
            votes[_topic].yes == 0 && votes[_topic].no == 0,
            "Vote already exists!"
        );
        votes[_topic] = Vote(0, 0);
        topics.push(_topic);
    }

    function vote(string memory _topic, bool _voteYes) public {
        require(
            votes[_topic].yes != 0 || votes[_topic].no != 0,
            "Vote does not exist!"
        );
        if (_voteYes) {
            votes[_topic].yes += 1;
        } else {
            votes[_topic].no += 1;
        }
    }

    function getResults(
        string memory _topic
    ) public view returns (uint yes, uint no) {
        return (votes[_topic].yes, votes[_topic].no);
    }

    // Fungsi baru untuk mengambil daftar topik
    function getAllTopics() public view returns (string[] memory) {
        return topics;
    }
}
