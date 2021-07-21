ibrary(sdcMicro) ##obtain the sdcMicro from the library.
data("SalaryTaxes")##obtain the data from the database.
##I will use the build in function to do the rankswapping.
##print(SalaryTaxes) To see if it works or not
salary <- SalaryTaxes
##Here i will read the package from sdcMicro and plot scatterplot, to find the pairs.
cascV <- colnames(salary)
pairs(~ID + Age + SalaryBefore + Taxes +SalaryAfter+YearlySalaryBefore+YearlyTaxes+YearlySalaryAfter,data=salary,main="Scatterplot 
matrix") ##This one will as well be used to compare the different ranks.
## Disclosure risk for data protected using rank swapping
rankswap1SAL <- rankSwap(salary, variables =cascV,P=10, R0=NULL)
rankswap2SAL <- rankSwap(salary, variables =cascV,P=0.08, R0=NULL)
rankswap3SAL <- rankSwap(salary, variables =cascV,P=0.1, R0=NULL)
rankswap4SAL <- rankSwap(salary, variables =cascV,P=2, R0=NULL)
rankswap5SAL <- rankSwap(salary, variables =cascV,P=6, R0=NULL)
##salary and Rs1with0.02 are example of two defined variables.
dRisk(obj=salary, xm=rankswap1SAL)
##to determine the risk from the rankswap
dRisk(obj=salary, xm=rankswap2SAL)
##to determine the risk from the rankswap
dRisk(obj=salary, xm=rankswap3SAL)
##to determine the risk from the rankswap
dRisk(obj=salary, xm=rankswap4SAL)
##same procedure here
dRisk(obj=salary, xm=rankswap5SAL)
##same procedure here
##-----------------------------------------------------------
##EXAMPLE 2 WITH cas
##-----------------------------------------------------------
data("CASCrefmicrodata")
##I will use the build in function to do the rankswapping.
##print(SalaryTaxes) To see if it works or not
casc <- CASCrefmicrodata
##Here i will read the package from sdcMicro and plot scatterplot, to find the pairs.
cascV <-
colnames(casc)pairs(~AFNLWGT+AGI+EMCONTRB+FEDTAX+PTOTVAL+STATETAX+TAXINC+POTHVAL+
INTVAL+PEARNVAL+FICA+WSALVAL+ERNVAL,data=casc,main="Scatterplot matrix")##This one will as 
well be used to compare the different ranks.
## Disclosure risk for data protected using rank swapping
rankswap1casc <- rankSwap(casc, variables=cascV, P=10, R0=NULL) ##test with p=0.02
rankswap2casc <- rankSwap(casc, variables=cascV, P=0.08, R0=NULL)##test with p=0.08
rankswap3casc<- rankSwap(casc, variables=cascV, P=0.1, R0=NULL)##test with p=0.09
rankswap4casc <- rankSwap(casc, variables=cascV, P=6, R0=NULL) ##test with p=0.4dRisk(obj=casc, xm=rankswap1casc)
##to determine the risk from the rankswap
dRisk(obj=casc, xm=rankswap2casc)
##to determine the risk from the rankswap
dRisk(obj=casc, xm=rankswap3casc)
##to determine the risk from the rankswap
dRisk(obj=casc, xm=rankswap4casc)
##same procedure here
dRisk(obj=casc, xm=rankswap5casc)
##same procedure here