import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap(){
        exists(Macro m| m.getName().regexpMatch("ntoh.*")|this = m.getAnInvocation().getExpr())
    }
}

from NetworkByteSwap n 
select n,"Network byte swap"


// from Macro m
// where m.getName().regexpMatch("ntoh.*")
// select m.getAnInvocation().getExpr()