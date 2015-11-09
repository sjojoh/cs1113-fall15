#assinment commands
#{}
#x = 5
#{(x,5)}
#y = 6
#{(x,5),(y,6)}
#conditions
#or apply to two arguments 
#if(x > 0):
#    x = 0
#    z = 10
#else:
#    x = 1
#    z = 11

#iteration

#times = 10
#while (times > 0):
#    print ('Hello')
#    times = (times - 1)
#procedures and procedure call
#def fun(a, b, c, x):
#    result = a * (x * x) + b * x + c
#    return result

def hs(n):
    a = 0; # counter: default 0
    
    while n != 1:
        print (n); # (1) output n
        a = a + 1; # (2) update counter
        # update n
        if (n % 2 == 0):
            n = (n//2)
        else:
            n = (3*n + 1)

    a = a + 1
    print (n)
    print (a)
    return None; 

 





    
    
    
