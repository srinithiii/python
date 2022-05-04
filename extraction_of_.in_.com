a=['srinithi@gmail.com','kavi@yahoo.in']
out=[]
for i in a:
    s=''
    for j in i[::-1]:
        if j!='.':
          s=j+s  
        else:
            out=out+[j+s]
            break    
    
    
print(out)    