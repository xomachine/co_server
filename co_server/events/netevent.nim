from ../utils/socketstream import SocketStream
## There will be events related to the network level of co_server.

type
  IncommingTCPRequest* = tuple
    ## When TCP connection is established from the other peer, the server will
    ## raise this event. `communication` is a SocketStream of newly created
    ## connection.
    sender: string
    communication: SocketStream
  IncommingDatagramm* = tuple
    ## This event is fired when new datagramm is received by UDP server.
    ## The `answer` field is a procedure that allows to reply to the datagramm
    ## sender.
    sender: string
    data: string
    answer: proc (data: string)
