// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Enroll{
    mapping(address => mapping(uint => uint)) subject;
    uint bc;
    uint nlp;
    uint mv;
    uint ai;
    uint some = 1000;

    constructor(){
        
    }

    function call2() public view returns(uint){
        return some;
    }
    
    function select(address user,uint sub) public {
        if(subject[user][sub] == 0){
            if(sub == 1){
                bc++;
                subject[user][sub] += 1;
            }else if(sub == 2){
                nlp++;
                subject[user][sub] += 1;
            }else if(sub == 3){
                mv++;
                subject[user][sub] += 1;
            }else{
                ai++;
                subject[user][sub] += 1;
            }
        }
    }
    
    function show(uint sub) public view returns(uint){
        if(sub == 1){
            return bc;
        }else if(sub == 2){
            return nlp;
        }else if(sub == 3){
            return mv;
        }else if(sub == 4){
            return ai;
        }else{
            return 10;
        }
    }
}