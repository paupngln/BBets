Pau<-function(numClass = 35,odds = 2,count = 637){
  
  days= 1:365
  repeatn=numClass
  varstor=numeric()
  Pau = 0
  for (i in 1:count) {
    sam=sample(days,size=numClass,replace = T)
    y=duplicated(sam)
    if (sum(y)>0) Pau=Pau+1
    else Pau = Pau - odds
  }
  return(Pau)
}