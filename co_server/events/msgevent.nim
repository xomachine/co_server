from co_protocol.netproto import Request, Datagramm, Reply
## There will be message level events in co_server.

type
  NewBroadcastMessage* = tuple
    ## The event representing new message received via UDP.
    ## `answer` field is a procedure that can be used to reply to the message
    ## sender.
    author: string
    message: Datagramm
    answer: proc (reply: Datagramm)
  NewMessage* = tuple
    ## The event representing new message received via TCP.
    ## The `answer` procedure allows to send a `Reply` structure back to
    ## the message sender via same socket.
    author: string
    message: Request
    answer: proc (reply: Reply)
