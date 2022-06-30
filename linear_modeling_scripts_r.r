library(ggplot2)

arg = commandArgs(trailingOnly=TRUE)
dataset = read.csv(arg)

model = lm(formula = x ~ y, data = dataset)
ggplot() +
    geom_point(aes(x = dataset$x, y = dataset$y),
            colour = 'red') +
    ggtitle('X vs Y') +
    xlab('X') +
    ylab('Y')
ggsave('r_orig.png')

ggplot(dataset, aes(x = x, y = y)) +
    geom_point(color = 'red') +
    stat_smooth(method = "lm", se=FALSE, color = "blue")
ggsave('r_lm.png')


