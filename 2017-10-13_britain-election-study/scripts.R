needs(foreign, tidyverse, magrittr, utils)

############################################
########## British Election Study ##########
############################################

# Calculating the shares of Leavers & Remainers who voted Conservative & Labour, respectively

bes.2017.raw <- read.spss("http://www.britishelectionstudy.com/custom/uploads/2017/08/BES2017_W13_v1.0.sav", to.data.frame = T)
bes.2017.metadata <- data.frame(var = names(bes.2017.raw), label = attr(bes.2017.raw, "variable.labels"))

ge17 <- bes.2017.raw %>%
  group_by(EUref = profile_eurefvote) %>%
  summarise(
    Con = sum(wt_new_W13[generalElectionVote == "Conservative"], na.rm=T),
    Lab = sum(wt_new_W13[generalElectionVote == "Labour"], na.rm=T),
    all = sum(wt_new_W13[generalElectionVote != "Don't know"], na.rm=T)
  ) %>%
  ungroup %>%
  mutate(
    Con = Con/All*100,
    Lab = Lab/All*100
  ) %>%
  select(-All) %>%
  filter(grepl("remain|Leave",EUref)) %>%
  gather(party, shareGE17, 2:3) %>%
  mutate(segment = paste0(ifelse(grepl("Leave",EUref), "Leave ", "Remain "), party)) %>%
  select(segment, shareGE17)

##################################
########## YouGov polls ##########
##################################

# Calculating the shares of Leavers & Remainers who now intend to vote Conservative & Labour, respectively

youGov <- read_csv("youGov.csv")
latest <- youGov %>%
  filter(party != "Don't know") %>%
  gather(EUref, voters, 3:4) %>%
  group_by(poll, EUref) %>%
  mutate(totalVoters = sum(voters)) %>%
  filter(party %in% c("Con", "Lab")) %>%
  group_by(party, EUref) %>%
  summarise(voters = sum(voters), totalVoters = sum(totalVoters)) %>%
  ungroup %>%
  mutate(
    shareLatest = voters/totalVoters*100,
    segment = paste0(ifelse(grepl("leave",EUref), "Leave ", "Remain "), party)
    ) %>%
  select(segment, shareLatest)

left_join(ge17, latest) %>%
  mutate(change = shareLatest - shareGE17)

# The changes since June 2017 in the shares of Leavers and Remainers intending to vote for each party were then applied to constituency-level totals of Leave and Remain voter numbers per Lebrecht's analysis of Hanretty's data: “Areal interpolation and the UK’s referendum on EU membership”, Chris Hanretty, Journal Of Elections, Public Opinion And Parties, Online Early Access, http://dx.doi.org/10.1080/17457289.2017.1287081
