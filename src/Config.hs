module Config

( missions
) where

import Model

-- keywords
mena = ["algeria","bahrain","egypt","iran","iraq","israel","jordan",
        "libya","morocco","oman","qatar","saudi","syria", "sudan", 
        "tunisia", "uae","yemen"]

countries  = ["china", "france", "germany", "uk"] ++ mena
people     = ["obama", "putin", "netanyahu", "clinton", "cameron", "merkel", "assad"]
langs      = ["python", "haskell", "lua"]


keywords   = countries ++ people

-- create missions here
missions :: [Mission]
missions = [mideast, technology]

love :: Mission
love = Mission
    { missionName = "Love"
    , missionCodeName = "love"
    , missionTargets =
        [ Target { targetName      = "planet.haskell"
                 , targetURL       = "http://planet.haskell.org/rss20.xml"
                 , targetKeywords  = ["machine", "love"] ++ mena
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        ]
    , nAgents = 3
    }


mideast :: Mission
mideast = Mission
    { missionName = "Middle East Current Affairs"
    , missionCodeName = "mideast"
    , missionTargets =
        [ Target { targetName      = "news.google"
                 , targetURL       = "http://news.google.com/news?output=rss"
                 , targetKeywords  = ["deficit", "maliki"] ++ keywords
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        , Target { targetName      = "the guardian global"
                 , targetURL       = "http://feeds.guardian.co.uk/theguardian/rss"
                 , targetKeywords  = ["deficit", "perry"] ++ keywords
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        , Target { targetName      = "the guardian mideast"
                 , targetURL       = "http://www.guardian.co.uk/world/saudiarabia/rss"
                 , targetKeywords  = ["abdullah", "bahrain"] ++ keywords
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        ]
    , nAgents = 3
    }

technology :: Mission
technology = Mission
    { missionName = "Tech News"
    , missionCodeName = "tech"
    , missionTargets =
        [ Target { targetName      = "planet.python"
                 , targetURL       = "http://planet.python.org/rss20.xml"
                 , targetKeywords  = ["pypy", "arduino", "cython", "guido"]
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        , Target { targetName      = "arstechnica"
                 , targetURL       = "http://feeds.arstechnica.com/arstechnica/index?format=xml"
                 , targetKeywords  = ["apple", "microsoft", "vmware", "ibm"]
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        , Target { targetName      = "planet.haskell"
                 , targetURL       = "http://planet.haskell.org/rss20.xml"
                 , targetKeywords  = ["machine", "love"] ++ langs
                 , targetRelevance = 0.0
                 , targetData      = Nothing
                 , targetFeed      = Nothing
                 , targetEntries   = Nothing
                 }
        ]
    , nAgents = 3
    }


