library("tidyverse")

## read in the data

meta <- read_csv("data/working/all_meta.csv")
plfa <- read_csv("data/working/plfa_t.csv")
veg <-read_csv("data/working/veg.csv")
env_16s <-read_csv("data/working/16s_env.csv")
env_18s <-read_csv("data/working/18s_env.csv")
env_its <-read_csv("data/working/its_env.csv")
otu_16s <-read_csv("data/working/16s_otu_5800_t.csv")
otu_18s <-read_csv("data/working/18s_otu_7250_t.csv")
otu_its <-read_csv("data/working/its_otu_8000_t.csv")

## fix up transposition using gather / spread

#### This needs working on after. Cheat for now and excel

## multiply otu_its by meta$f_b, then innerjoin to create otu_its_16s

otu_its_16s <-read_csv("data/working/its_16s_t.csv")

## explore univariates

ggplot(meta,aes(AMMI, tot_plfa)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, f_b)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, gpos_gneg)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, lit_a_oa)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, soil_a_oa)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, litCN)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, soilCN)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, soilC)) +
  geom_point() +
  geom_smooth(method = lm)

ggplot(meta,aes(AMMI, w_doc)) +
  geom_point() +
  geom_smooth(method = lm)
