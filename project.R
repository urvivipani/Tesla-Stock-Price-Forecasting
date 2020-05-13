---
title: "Untitled"
output: word_document
---
```{r}
library(fpp2)
```

```{r}
install.packages("quantmod")
library(quantmod)

Sys.Date()
```

```{r}
getSymbols(Symbols = "TSLA", src = "yahoo")

tsla=data.frame(TSLA)
View(tsla)
tsla_close = tsla$TSLA.Close
tsla_close <- ts(data=tsla_close, frequency=253, start=c(2010,7))

```

```{r}
autoplot(tsla_close) + xlab("Year") + ylab("Closing Price of tesla")+
  ggtitle("Timeseries plot of Tesla closing price")
```

```{r}
ggseasonplot(tsla_close, year.labels = TRUE, year.labels.left = TRUE) + ylab("Closing price") + xlab(" Dates across year")
```
```{r}

qplot(tsla$TSLA.Close,tsla$TSLA.Open, data=tsla)

```

```{r}
library(GGally)

ggpairs(tsla[,1:5])

```

```{r}
meanf(tsla_close, h=5)
```


```{r}
naive(tsla_close, h=5)

```
```{r}
snaive(tsla_close, h=5)

```


```{r}
library(ggplot2)
library(gridExtra)
options(repr.plot.width=12, repr.plot.height=12) 

p1 = ggplot(stocks, aes(open)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))

p2 = ggplot(stocks, aes(high)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))

p3 = ggplot(stocks, aes(low)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))

p4 = ggplot(stocks, aes(close)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))

grid.arrange(p1,p2,p3,p4, nrow=2,ncol=2)
```

```{r}


```

