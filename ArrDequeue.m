function [DequeueArrValue AfterDequeueArr] = ArrDequeue(boardArr,noOfQueen)
    DequeueArrValue = boardArr(:,1:noOfQueen);
    AfterDequeueArr = boardArr(:,noOfQueen+1:length(boardArr));
end
