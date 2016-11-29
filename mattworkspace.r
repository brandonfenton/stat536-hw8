1)  The authors justify removing the quadratic trend on the basis that ARMA models rely on the assumption of stationarity.  By removing the trend the authors stated that the residuals has a constant mean of zero and constant variance.  Thus, the residuals have the necessary stationarity property to fit an ARMA model.  Furthermore, since the goal was to remove only the trend and not the variation around the trend, "simple, parsimonious methods" were given preference i.e. they did not use splines.

3) Both SACF plots exhibit similar patterns.  Over the first few lags there is positive autocorrelation.  For mean Douglas-fir the ACF exceeds the 2SE band for the 2nd lag, while the mean western white pine exceeds the band at both the 1st and 2nd lag indicating that there is strong evidencde that the autocorrelation is not equal to zero.  Each trend flips to a negative autocorrelation at lag four and five respectively.  Then, both switch back to positive at lags of 11 and 12 respectively.  The pattern of both trends are that of a sine wave and are visibility damping as the number of lags increases.

4) The sample size for Douglas fir is 8.  For the white the pine the sample size is 10.  Therefore the cut-offs based on the approximation we discussed are $\pm \frac{2}{\sqrt{8}} = \pm 0.7071$ for the douglas fir and $\pm \frac{2}{\sqrt{10}} = \pm 0.6325$ for the white pine.  Our approximation differs from the 2SE method used by the author, in that our approximation is constant across different lags.  The approximation used by the authors increases slightly as the size of the lags increases

6) 
set.seed(153)
y1 <- arima.sim(model=list(ar=c(0.37,0.15)), n=77, sd=0.4)
y2 <- arima.sim(model=list(ar=c(0.37,0.15)), n=77, sd=0.4)

plot(1:77, y1, type="l")
