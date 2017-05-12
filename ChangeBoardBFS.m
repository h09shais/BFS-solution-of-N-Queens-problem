function boardArr = ChangeBoardBFS(boardArr,noOfQueen)
 
InitialBoardArr = [];
boardArrChild = CreateBoardArrChild(boardArr, noOfQueen);
ArrEnqueueAfter = ArrEnqueue(InitialBoardArr, boardArrChild);
boardArrChild = [];
[DequeueArrValue AfterDequeueArr] = ArrDequeue(ArrEnqueueAfter,noOfQueen);
boardArr = DequeueArrValue;
 
while(1)
    if( length( boardArr( boardArr == 1)) == noOfQueen) 
        break;
    end
    boardArrChild = CreateBoardArrChild(boardArr, noOfQueen);
    ArrEnqueueAfter = ArrEnqueue(AfterDequeueArr, boardArrChild);
    boardArrChild = [];
    [DequeueArrValue AfterDequeueArr] = ArrDequeue(ArrEnqueueAfter,noOfQueen);
    boardArr = DequeueArrValue;    
end
end
