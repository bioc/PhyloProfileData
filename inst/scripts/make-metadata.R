ampkTorProfile <- data.frame(
    Title = c(
        "Phylogenetic profiles of human AMPK-TOR pathway",
        paste0(
            "FASTA sequences for proteins in the phylogenetic profiles of ",
            "human AMPK-TOR pathway"
        ),
        paste0(
            "Domain annotations for proteins in the phylogenetic profiles of ",
            "human AMPK-TOR pathway"
        )
    ),
    Description = rep(
        paste0(
            "The phylogenetic profiles of 147 human proteins in the AMPK-TOR ",
            "pathway across 83 species in the three domains of life. This ",
            "data set contains a phylogenetic profile file, a multiple fasta ",
            "file and a protein annotation file. ",
            "Reference: ",
            "Valentin Roustan, Arpit Jain, Markus Teige, Ingo Ebersberger, ",
            "Wolfram Weckwerth, An evolutionary perspective of AMPK–TOR ",
            "signaling in the three domains of life, Journal of Experimental ",
            "Botany, Volume 67, Issue 13, June 2016, Pages 3897–3907, ",
            "https://doi.org/10.1093/jxb/erw211"
        ), 3
    ),
    BiocVersion = rep("3.10", 3),
    Genome = rep(NA, 3),
    SourceType = rep("Zip", 3),
    SourceUrl = rep(
        "https://github.com/BIONF/phyloprofile-data/blob/master/ampk-tor.zip", 3
    ),
    SourceVersion = rep("v1", 3),
    Species = rep(NA, 3),
    TaxonomyId = rep(NA, 3),
    Coordinate_1_based = rep(NA, 3),
    DataProvider = rep(
        "Applied Bioinformatics Dept., Goethe University Frankfurt", 3
    ),
    Maintainer = rep("Vinh Tran <tran@bio.uni-frankfurt.de>", 3),
    RDataClass = c("data.frame", "AAStringSet", "data.frame"),
    DispatchClass = rep("Rda", 3),
    RDataPath = c(
        "PhyloProfileData/ampkTorPhyloProfile.RData",
        "PhyloProfileData/ampkTorFasta.RData",
        "PhyloProfileData/ampkTorDomain.RData"
    ),
    Note = rep(NA, 3),
    stringsAsFactors = FALSE
)

buscoArthropodaProfile <- data.frame(
    Title = c(
        "Phylogenetic profiles of BUSCO arthropoda proteins",
        paste0(
            "FASTA sequences for proteins in the phylogenetic profiles of ",
            "BUSCO arthropoda proteins"
        ),
        paste0(
            "Domain annotations for proteins in the phylogenetic profiles of ",
            "BUSCO arthropoda proteins"
        )
    ),
    Description = rep(
        paste0(
            "The phylogenetic profiles of 1011 BUSCO arthropoda ortholog ",
            "groups across 88 species in the three domains of life. This data ",
            "set contains a phylogenetic profile file, a multiple fasta file ",
            "and a protein annotation file."
        ), 3
    ),
    BiocVersion = rep("3.10", 3),
    Genome = rep(NA, 3),
    SourceType = rep("Zip", 3),
    SourceUrl = rep(
        "https://github.com/BIONF/phyloprofile-data/blob/master/arthropoda.zip",
        3
    ),
    SourceVersion = rep("v1", 3),
    Species = rep(NA, 3),
    TaxonomyId = rep(NA, 3),
    Coordinate_1_based = rep(NA, 3),
    DataProvider = rep(
        "Applied Bioinformatics Dept., Goethe University Frankfurt", 3
    ),
    Maintainer = rep("Vinh Tran <tran@bio.uni-frankfurt.de>", 3),
    RDataClass = c("data.frame", "AAStringSet", "data.frame"),
    DispatchClass = rep("Rda", 3),
    RDataPath = c(
        "PhyloProfileData/arthropodaPhyloProfile.RData",
        "PhyloProfileData/arthropodaFasta.RData",
        "PhyloProfileData/arthropodaDomain.RData"
    ),
    Note = rep(NA, 3),
    stringsAsFactors = FALSE
)

write.csv(
    file = "inst/extdata/PhyloProfileData-metadata.csv",
    rbind(ampkTorProfile, buscoArthropodaProfile), 
    row.names=FALSE
)
