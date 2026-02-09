# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# S3 interface for semi-confirmatory SEM (Structural Equation Modeling) via PL (Partial Least) Use lslx With (In) R Software
install.packages("lslx")
install.packages("lavaan")
library("lavaan")
library("lslx")
# Estimation S3 interface for semi-confirmatory SEM (Structural Equation Modeling) via PL (Partial Least) Use lslx With (In) R Software
lslx = read.csv("https://raw.githubusercontent.com/timbulwidodostp/lslx/main/lslx/lslx.csv", sep = ";")
model_lslx <- "visual  =~ x1 + x2 + x3
             textual =~ x4 + x5 + x6
             speed   =~ x7 + x8 + x9
             pen() * visual  =~ x4 + x5 + x6 + x7 + x8 + x9
             pen() * textual =~ x1 + x2 + x3 + x7 + x8 + x9
             pen() * speed   =~ x1 + x2 + x3 + x4 + x5 + x6
             visual  ~~ 1 * visual
             textual ~~ 1 * textual
             speed   ~~ 1 * speed"
lslx <- plsem(model = model_lslx, data = lslx, penalty_method = "mcp",  lambda_grid = seq(.02, .60, .02), delta_grid = c(1.5, 3.0, Inf))
summary(lslx, selector = "bic")
# S3 interface for semi-confirmatory SEM (Structural Equation Modeling) via PL (Partial Least) Use lslx With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished