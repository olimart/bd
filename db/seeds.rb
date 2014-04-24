puts 'creating books...'

s = Serie.create!(name: "12 SEPTEMBRE".humanize)
s.books.create!(tome: '1', title: "LE CALIFAT DE STOCKHOLM".humanize, author: "SEITER, GABRIELLI".titleize, editor: "GLENAT".humanize)


s = Serie.create!(name: "ALPHA".humanize)
s.books.create!(tome: '1', title: "L'éCHANGE".humanize, author: "JIGOUNOV, RENARD".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "Clan Bogdanov".humanize, author: "JIGOUNOV, RENARD".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "LE SALAIRE DES LOUPS".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "LA LISTE".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "SANCTIONS".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "L'éMISSAIRE".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '7', title: "SNOW WHITE, 30 SECONDES!".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '8', title: "JEUX DE PUISSANTS".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '9', title: "SCALA".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '10', title: "MENSONGES".humanize, author: "JIGOUNOV, MYTHIC".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '11', title: "FUCKIN PATRIOT".humanize, author: "JIGOUNOV".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '12', title: "PETIT TOUR AVEC MALCOM".humanize, author: "JIGOUNOV".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "ALPHA - PREMIèRES ARMES".humanize)
s.books.create!(tome: '1', title: "BAPTêME DE FEU".humanize, author: "LOUTTE, HERZET".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "ALVIN NORGE".humanize)
s.books.create!(tome: '1', title: "@ENFER.ZCOM".humanize, author: "CHRIS LAMQUET".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "MORPHING AMER".humanize, author: "CHRIS LAMQUET".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "LUCYBER".humanize, author: "CHRIS LAMQUET".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "SHANGAï HYPOTHÈSE".humanize, author: "CHRIS LAMQUET".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "QUANTUM".humanize, author: "CHRIS LAMQUET".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "ANGELINE".humanize)
s.books.create!(tome: '1', title: "FUCKIN'DAY".humanize, author: "BLONDIEAU, SUMMER, GOETHALS, ASTIER".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '2', title: "MISSISSIPPI QUEEN".titleize, author: "BLONDIEAU, SUMMER, FINO, ARILLA".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '3', title: "WHITE CHRISTMAS".humanize, author: "BLONDIEAU, SUMMER, FINO".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '4', title: "MEMPHIS, TENNESSEE".titleize, author: "BLONDIEAU, SUMMER, FINO".titleize, editor: "SOLEIL".humanize)


s = Serie.create!(name: "ARCTICA".humanize)
s.books.create!(tome: '1', title: "DIX MILLE ANS SOUS LES GLACES".humanize, author: "PECQUEUR, KOVACEVIC, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "MYSTèRE SOUS LA MER".humanize, author: "PECQUEUR, KOVACEVIC, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "LE PASSAGER DE LA PRéHISTOIRE".humanize, author: "PECQUEUR, KOVACEVIC, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "RéVéLATIONS".humanize, author: "PECQUEUR, KOVACEVIC, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "DESTINATION TERRE".humanize, author: "PECQUEUR, KOVACEVIC, SCHELLE".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "ASSASSIN'S CREED".humanize)
s.books.create!(tome: '1', title: "DESMOND".humanize, author: "CORBEYRAN, DEFALI".titleize, editor: "LES DEUX ROYAUMES".humanize)


s = Serie.create!(name: "BACK WORLD".humanize)
s.books.create!(tome: '1', title: "NIVEAU 1 : tome 1".humanize, author: "CORBEYRAN, ROLLIN".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '2', title: "NIVEAU 2 : tome 2".humanize, author: "CORBEYRAN, ROLLIN".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '3', title: "NIVEAU 3 : tome 3".humanize, author: "CORBEYRAN, ROLLIN".titleize, editor: "GLENAT".humanize)


s = Serie.create!(name: "Black Op")
s.books.create!(tome: '1', title: "Saison 1 : tome 1".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "Saison 1 : tome 2".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "Saison 1 : tome 3".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "Saison 1 : tome 4".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "Saison 1 : tome 5".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "Saison 1 : tome 6".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "Saison 2 : tome 7".humanize, author: "DESBERG, LABIANO".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "BLACKSAD".humanize)
s.books.create!(tome: '4', title: "L'ENFER, LE SILENCE".humanize, author: "DIAZ CANALES, GUARNIDO".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "CASSIO".humanize)
s.books.create!(tome: '1', title: "LE PREMIER ASSASSIN".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "LE DEUXIèME COUP".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "LA TROISIèME PLAIE".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "LE DERNIER SANG".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "LE CHEMIN DE ROME".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "L'APPEL DE LA SOUFFRANCE".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '7', title: "LE RéVEIL D'UNE DéESSE".humanize, author: "DESBERG, RECULé".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "DE SANG FROID".humanize)
s.books.create!(tome: '1', title: "TOME 1".humanize, author: "MARIOLLE, DUARTE, MIKI".titleize, editor: "GRAND ANGLE".humanize)


s = Serie.create!(name: "DISTRICT 77".humanize)
s.books.create!(tome: '1', title: "LILI".humanize, author: "DENYS, DUGAND".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "FURIANI VENDETTA".humanize, author: "DENYS, DUGAND".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "BIG-BOSS REQUIEM".humanize, author: "DENYS, DUGAND".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "DJINN".humanize)
s.books.create!(tome: '1', title: "LA FAVORITE".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "LES 30 CLOCHETTES".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LE TATOUAGE".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LE TRéSOR".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "AFRICA".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "LA PERLE NOIRE".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "PIPIKTU".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '8', title: "FIèVRES".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '9', title: "LE ROI GORILLE".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '10', title: "LE PAVILLON DES PLAISIRS".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '11', title: "UNE ETERNELLE JEUNESSE".humanize, author: "DUFAUX, MIRALLES".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "ENCHAîNéS".humanize)
s.books.create!(tome: '1', title: "LE TENTATEUR".humanize, author: "CALLEDE, GIHEF".titleize, editor: "VENTS D'OUEST".humanize)
s.books.create!(tome: '2', title: "LE CORRUPTEUR".humanize, author: "CALLEDE, GIHEF".titleize, editor: "VENTS D'OUEST".humanize)


s = Serie.create!(name: "EGIDE".humanize)
s.books.create!(tome: '1', title: "ENERGY BUSINESS".humanize, author: "WEYTENS, RODIER".titleize, editor: "IMPACT".humanize)
s.books.create!(tome: '2', title: "AFRICAN POWER".humanize, author: "WEYTENS, MORRISSETTE".titleize, editor: "IMPACT".humanize)


s = Serie.create!(name: "EL NINO".humanize)
s.books.create!(tome: '1', title: "LA PASSAGèRE DU CAPRICORNE".humanize, author: "PERRISSIN, PAVLOVIC".titleize, editor: "LES HUMANOÏDES ASSOCIES".humanize)
s.books.create!(tome: '2', title: "RIO GUYAS".titleize, author: "PERRISSIN, PAVLOVIC".titleize, editor: "LES HUMANOÏDES ASSOCIES".humanize)
s.books.create!(tome: '3', title: "L'ARCHIPEL DES BADJOS".humanize, author: "PERRISSIN, PAVLOVIC".titleize, editor: "LES HUMANOÏDES ASSOCIES".humanize)
s.books.create!(tome: '4', title: "Les oubliées de Kra", author: "PERRISSIN, PAVLOVIC".titleize, editor: "LES HUMANOÏDES ASSOCIES".humanize)
s.books.create!(tome: '5', title: "LE PARIA DE CéLèBES".humanize, author: "PERRISSIN, PAVLOVIC".titleize, editor: "LES HUMANOÏDES ASSOCIES".humanize)


s = Serie.create!(name: "ELLIS GROUP".humanize)
s.books.create!(tome: '1', title: "LADY CROWN".titleize, author: "LATOUR, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "SAX".humanize, author: "LATOUR, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "SANDMEN".humanize, author: "LATOUR, GRIFFO".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "L'éTOILE DU DéSERT".humanize)
s.books.create!(tome: '1', title: "TOME 1".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "TOME 2".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "GIPSY".humanize)
s.books.create!(tome: '1', title: "L'éTOILE DU GITAN".humanize, author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "Les feux de Sibérie", author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LE JOUR DU TSAR".humanize, author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LES YEUX NOIRS".humanize, author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "L'AILE BLANCHE".humanize, author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "LE RIRE AZTEQUE".humanize, author: "MARINI, SMOLDEREN".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "GOLDEN CITY".humanize)
s.books.create!(tome: '1', title: "PILLEURS D'éPAVES".humanize, author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "Banks contre Banks", author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "NUIT POLAIRE".humanize, author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "GOLDY".humanize, author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "Le dossier Harrisson", author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '6', title: "JESSICA".humanize, author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '7', title: "LES ENFANTS PERDUS".humanize, author: "PECQUEUR, MALFIN, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '8', title: "LES NAUFRAGéS DES ABYSSES".humanize, author: "PECQUEUR, MALFIN, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '9', title: "L'énigme Banks", author: "PECQUEUR, MALFIN, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '10', title: "ORBITE TERRESTRE BASSE".humanize, author: "PECQUEUR, MALFIN, SCHELLE".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "GOLDEN CUP".humanize)
s.books.create!(tome: '1', title: "DAYTONA".humanize, author: "PECQUEUR, HENRIET, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "500 MILLE CHEVAUX".humanize, author: "PECQUEUR, HENRIET, SCHELLE & ROSA".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "DES LOUPS DANS LA SPéCIALE".humanize, author: "PECQUEUR, HENRIET, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "LA FILLE DE LA TOUNDRA".humanize, author: "PECQUEUR, HENRIET, SCHELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "LE BAISER DU DRAGON".humanize, author: "PECQUEUR, HENRIET, USAGI".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "GROOM LAKE".humanize)
s.books.create!(tome: '1', title: "LA PSYCHANALYSE DE L'OUBLI".humanize, author: "DZIALOWSKI, RICHEZ".titleize, editor: "GRAND ANGLE".humanize)


s = Serie.create!(name: "HK".humanize)
s.books.create!(tome: '1,1', title: "AVALON".humanize, author: "MORVAN, HERAULT".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '1,2', title: "ELYSéE".humanize, author: "MORVAN, HERAULT".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '1,3', title: "CALDERA".humanize, author: "MORVAN, HERAULT".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '1,4', title: "PARADISO".humanize, author: "MORVAN, HERAULT".titleize, editor: "GLENAT".humanize)


s = Serie.create!(name: "IL éTAIT UNE FOIS EN France".humanize)
s.books.create!(tome: '1', title: "L'empire de Monsieur Joseph", author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '2', title: "LE VOL NOIR DES CORBEAUX".humanize, author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '3', title: "HONNEUR ET POLICE".humanize, author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '4', title: "AUX ARMES CITOYENS".humanize, author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '5', title: "Le petit juge de Melun".humanize, author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '6', title: "LA TERRE PROMISE".humanize, author: "NURY, VALLéE".titleize, editor: "GLENAT".humanize)


s = Serie.create!(name: "INSIDERS".humanize)
s.books.create!(tome: '1', title: "GUéRILLA TCHéTCHèNE".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "OPéRATION OFFSHORE".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "MISSILES POUR ISLAMABAD".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LE PIèGE AFGHAN".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "O.P.A sur le Kremlin", author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "DESTINATION GOULAG".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "LES DRAGONS DE PéKIN".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '8', title: "LE PRINCE ROUGE".humanize, author: "BARTOLL, GARRETA".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "INTERPOL".humanize)
s.books.create!(tome: '1', title: "L'AFFAIRE PATRICE HELLERS".humanize, author: "DUPRé, ALCANTE".titleize, editor: "DUPUIS".humanize)


s = Serie.create!(name: "I.R.$")
s.books.create!(tome: '1', title: "LA VOIE FISCALE".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "LA STRATéGIE HAGEN".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "BLUE ICE".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "NARCOCRATIE".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "SILICA INC.".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "LE CORRUPTEUR".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '7', title: "CORPORATE AMERICA".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '8', title: "LA GUERRE NOIRE".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '9', title: "LIAISONS ROMAINES".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '10', title: "LA LOGE DES ASSASSINS".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '11', title: "LE CHEMIN DE GLORIA".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '12', title: "AU NOM DU PRéSIDENT".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '13', title: "L'OR DE YAMASHITA".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '14', title: "LES SURVIVANTS DE NANKIN".humanize, author: "VRANCKEN, DESBERG".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "IRS - ALL WATCHER".humanize)
s.books.create!(tome: '1', title: "ANTONIA".humanize, author: "QUEIREIX, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "LA NéBULEUSE ROXANA".humanize, author: "KOLLER, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "PETRA".humanize, author: "QUEIREIX, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "LA SPIRALE MC PARNELL".humanize, author: "MUTTI, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "MIA MAï".humanize, author: "BOURGNE, DESBERG".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "LA THéORIE DES CORDES FISCALES".humanize, author: "DESBERG, KOLLER".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "JAMES HEALER".humanize)
s.books.create!(tome: '1', title: "CAMDEN ROCK".humanize, author: "SWOLFS, DE VITA".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "LA NUIT DU COBRA".humanize, author: "SWOLFS, DE VITA".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "LA MONTAGNE SACRéE".humanize, author: "SWOLFS, DE VITA".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "LA LOI DES 12 TABLES".humanize)
s.books.create!(tome: '1', title: "VOLUME PREMIER".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "VOLUME DEUXIEME".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "VOLUME TROISIèME".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "VOLUME QUATRIèME".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "VOLUME CINQUIèME".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '6', title: "VOLUME SIXIèME".humanize, author: "CORBEYRAN, DEFALI, PERUBROS".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "LANCASTER".humanize)
s.books.create!(tome: '1', title: "LES PORTES DE L'ANTARTIQUE".humanize, author: "BEC, DZIAKOWSKI".titleize, editor: "GLéNAT".humanize)


s = Serie.create!(name: "LA MéTAPHORE DU PAPILLON".humanize)
s.books.create!(tome: '1', title: "TOME 1: L'IMPACT".humanize, author: "TOSHY & PERNOUD".titleize, editor: "GRAND ANGLE".humanize)
s.books.create!(tome: '2', title: "TOME 2: CHAOS".humanize, author: "TOSHY & PERNOUD".titleize, editor: "GRAND ANGLE".humanize)
s.books.create!(tome: '3', title: "TOME 3: STATISTIQUEMENT VôTRE!".humanize, author: "TOSHY & PERNOUD".titleize, editor: "GRAND ANGLE".humanize)


s = Serie.create!(name: "LARGO WINCH".humanize)
s.books.create!(tome: '17', title: "MER NOIRE".humanize, author: "FRANCQ, VAN HAMME".titleize, editor: "DUPUIS".humanize)


s = Serie.create!(name: "LA VOIE DU SAMOURAï".humanize)
s.books.create!(tome: '1', title: "LA LAME ET LE VENT".humanize, author: "RON MARZ, BART SEARS".titleize, editor: "SEMIC ALBUM".humanize)


s = Serie.create!(name: "L'ARCHE".humanize)
s.books.create!(tome: '1', title: "PROJET SHERWOOD".humanize, author: "FELIX, MALIE, RIEU".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '2', title: "FRANKESTEIN".humanize, author: "FELIX, MALIE, RIEU".titleize, editor: "SOLEIL".humanize)


s = Serie.create!(name: "LE CHAMP DES STRYGES".humanize)
s.books.create!(tome: '1', title: "SAISON 1: OMBRES".humanize, author: "CORBEYRAN, GUERINEAU, MERLET".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "SAISON 1: PIèGES".humanize, author: "CORBEYRAN, GUERINEAU, MERLET".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "SAISON 1: EXPéRIENCES".humanize, author: "CORBEYRAN, GUERINEAU, MERLET".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "SAISON 1: EMPRISES".humanize, author: "CORBEYRAN, GUERINEAU, MERLET".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "SAISON 1: VESTIGES".humanize, author: "CORBEYRAN, GUERINEAU, RUBY".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '6', title: "SAISON 1: EXISTENCES".humanize, author: "CORBEYRAN, GUERINEAU, RUBY".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '7', title: "SAISON 2: RENCONTRES".humanize, author: "CORBEYRAN, GUERINEAU, RUBY".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '8', title: "SAISON 2: DEFIS".humanize, author: "CORBEYRAN, GUERINEAU, RUBY".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '9', title: "SAISON 2: REVELATIONS".humanize, author: "CORBEYRAN, GUERINEAU, FAVRELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '10', title: "SAISON 2: MANIPULATIONS".humanize, author: "CORBEYRAN, GUERINEAU, FAVRELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '11', title: "SAISON 2: CELLULES".humanize, author: "CORBEYRAN, GUERINEAU, FAVRELLE".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '12', title: "SAISON 2: CHUTES".humanize, author: "CORBEYRAN, GUERINEAU, HEDON".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "LE SCORPION".humanize)
s.books.create!(tome: '1', title: "LA MARQUE DU DIABLE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "LE SECRET DU PAPE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LA CROIX DE PIERRE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LE DEMON AU VATICAN".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "LA VALLéE SACRéE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "LE TRéSOR DU TEMPLE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "AU NOM DU PèRE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '', title: "LE PROCèS SCORPION".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '8', title: "L'OMBRE DE L'ANGE".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '9', title: "LE MASQUE DE LA VéRITé".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '10', title: "AU NOM DU FILS".humanize, author: "MARINI, DESBERG".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "LES AIGLES DE ROME".humanize)
s.books.create!(tome: '1', title: "LIVRE I".humanize, author: "MARINI".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "LIVRE II".humanize, author: "MARINI".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LIVRE III".humanize, author: "MARINI".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LIVRE IV".humanize, author: "MARINI".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "LES éTERNELS".humanize)
s.books.create!(tome: '1', title: "UMA".humanize, author: "YANN, MEYNET".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "MIRA".humanize, author: "YANN, MEYNET".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LE DIAMANT D'ABRAHAM".humanize, author: "YANN, MEYNET".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "LIVE WAR HEROES".humanize)
s.books.create!(tome: '1', title: "LIVE WAR HEROES".humanize, author: "DAVID, BOURGIER".titleize, editor: "SOLEIL".humanize)


s = Serie.create!(name: "MARSHALL".humanize)
s.books.create!(tome: '1', title: "D'OMBRES & DE LUMIERES".humanize, author: "FILIPPI, TELLO".titleize, editor: "LES HUMANOÎDES ASSOCIéS".humanize)
s.books.create!(tome: '2', title: "MAîTRE HISAYA".humanize, author: "FILIPPI, TELLO".titleize, editor: "LES HUMANOÎDES ASSOCIéS".humanize)


s = Serie.create!(name: "MATT PETERSON".humanize)
s.books.create!(tome: '1', title: "LONDON RUNNING".humanize, author: "BOLLéE, DELITTE".titleize, editor: "CASTERMAN".humanize)


s = Serie.create!(name: "MAUVAIS GENRE".humanize)
s.books.create!(tome: '1', title: "MAUVAIS GENRE".humanize, author: "CHLOé CRUCHADET".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "MOREA".humanize)
s.books.create!(tome: '1', title: "LE SANG DES ANGES".humanize, author: "ARLESTON, LABROSSE".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '2', title: "L'éCHINE DU DRAGON".humanize, author: "ARLESTON, LABROSSE".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '3', title: "LE FEU DU TEMPS".humanize, author: "ARLESTON, LABROSSE".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '4', title: "UN PARFUM D'éTERNITé".humanize, author: "ARLESTON, LATIL, LABROSSE".titleize, editor: "SOLEIL".humanize)


s = Serie.create!(name: "NOVA GENESIS".humanize)
s.books.create!(tome: '1', title: "DENVER".humanize, author: "BOISSIERE, CHABBERT".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '2', title: "GRAND CANYON".humanize, author: "BOISSIERE, CHABBERT".titleize, editor: "GLENAT".humanize)
s.books.create!(tome: '3', title: "LIBRE ESPACE".humanize, author: "BOISSIERE, CHABBERT".titleize, editor: "GLENAT".humanize)


s = Serie.create!(name: "OKKO".humanize)
s.books.create!(tome: '1', title: "LE CYCLE DE L'EAU".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '2', title: "LE CYCLE DE L'EAU 2".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '3', title: "LE CYCLE DE LA TERRE".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '4', title: "LE CYCLE DE LA TERRE 2".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '5', title: "LE CYCLE DE L'AIR 1".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '6', title: "LE CYCLE DE L'AIR 2".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '7', title: "LE CYCLE DU FEU 1".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)
s.books.create!(tome: '8', title: "LE CYCLE DU FEU 2".humanize, author: "HUB".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "PANDORA BOX".humanize)
s.books.create!(tome: '1', title: "L'ORGUEIL".humanize, author: "PAGOT, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '2', title: "LA PARESSE".humanize, author: "RADOVANOVIC, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '3', title: "LA GOURMANDISE".humanize, author: "DUPRé, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '4', title: "LA LUXURE".humanize, author: "PIGNAULT, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '5', title: "L'AVARICE".humanize, author: "JUSZEZAK, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '6', title: "L'ENVIE".humanize, author: "HENRIET, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '7', title: "LA COLèRE".humanize, author: "DAMOUR, ALCANTE".titleize, editor: "DUPUIS".humanize)
s.books.create!(tome: '8', title: "L'ESPéRANCE".humanize, author: "PAGOT, ALCANTE".titleize, editor: "DUPUIS".humanize)


s = Serie.create!(name: "RANI".humanize)
s.books.create!(tome: '1', title: "BâTARDE".humanize, author: "VAN HAMME, ALCANTE, VALLES".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "BRIGANDE".humanize, author: "VAN HAMME, ALCANTE, VALLES".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "ESCLAVE".humanize, author: "VAN HAMME, ALCANTE, VALLES".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "REALITY SHOW".humanize)
s.books.create!(tome: '1', title: "ON AIR".humanize, author: "FRANCIS PORCEL, J.D. MORVAN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "DIRECT LIVE".humanize, author: "FRANCIS PORCEL, J.D. MORVAN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "FINAL CUT".humanize, author: "FRANCIS PORCEL, J.D. MORVAN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "RECONQUISTA CHANNEL".humanize, author: "FRANCIS PORCEL, J.D. MORVAN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "TOTAL AUDIMAT".humanize, author: "FRANCIS PORCEL, J.D. MORVAN".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "RE-MIND".humanize)
s.books.create!(tome: '1', title: "1".humanize, author: "MUTTI & ALCANTE".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "SANCTUAIRE".humanize)
s.books.create!(tome: '1', title: "USS NEBRASKA".humanize, author: "XAVIER DORISON, CHRISTOPHE BEE".titleize, editor: "LES HUMANOÎDES ASSOCIéS".humanize)
s.books.create!(tome: '2', title: "LE PUITS DES ABîMES".humanize, author: "XAVIER DORISON, CHRISTOPHE BEE".titleize, editor: "LES HUMANOÎDES ASSOCIéS".humanize)
s.books.create!(tome: '3', title: "MôTH".humanize, author: "XAVIER DORISON, CHRISTOPHE BEE".titleize, editor: "LES HUMANOÎDES ASSOCIéS".humanize)


s = Serie.create!(name: "SECTION FINANCIèRE".humanize)
s.books.create!(tome: '1', title: "CORRUPTION".humanize, author: "MALKA, MUTTI".titleize, editor: "VENTS D'OUEST".humanize)
s.books.create!(tome: '2', title: "DéLIT D'INITIé".humanize, author: "MALKA, MUTTI".titleize, editor: "VENTS D'OUEST".humanize)
s.books.create!(tome: '3', title: "NEURO-TERRORISME".humanize, author: "MALKA, MUTTI".titleize, editor: "VENTS D'OUEST".humanize)
s.books.create!(tome: '4', title: "PARADIS ARTIFICIELS".humanize, author: "MALKA, MUTTI".titleize, editor: "VENTS D'OUEST".humanize)


s = Serie.create!(name: "TATANKA".humanize)
s.books.create!(tome: '1', title: "MORSURE".humanize, author: "CALLèDE, SéJOURNé, VERNEY".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "THOMAS SILANE".humanize)
s.books.create!(tome: '1', title: "FLASH MORTEL".humanize, author: "BUENDIA, CHANOINAT, LéCOSSOIS".titleize, editor: "GRAND ANGLE".humanize)
s.books.create!(tome: '2', title: "LE TUEUR DE NOëL".humanize, author: "BUENDIA, CHANOINAT, LéCOSSOIS".titleize, editor: "GRAND ANGLE".humanize)
s.books.create!(tome: '3', title: "TEMPêTES".humanize, author: "BUENDIA, CHANOINAT, LéCOSSOIS".titleize, editor: "GRAND ANGLE".humanize)
s.books.create!(tome: '4', title: "OBJECTIFS".humanize, author: "BUENDIA, CHANOINAT, ZAGHI".titleize, editor: "GRAND ANGLE".humanize)


s = Serie.create!(name: "THORGAL".humanize)
s.books.create!(tome: '1', title: "LA MAGICIENNE TRAHIE".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "L'îLE DES MERS GELéES".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "LES 3 VIEILLARDS DU PAYS D'ARAN".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "LA GALERE NOIRE".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "AU-DELA DES OMBRES".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "LA CHUTE DE BREK ZARITH".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '7', title: "L'ENFANT DES éTOILES".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '8', title: "ALINOë".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '9', title: "LES ARCHERS".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '10', title: "LE PAYS QÂ".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '11', title: "LES YEUX DE TANATLOC".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '12', title: "LA CITé DU DIEU PERDU".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '21', title: "LA COURONNE D'OGOTAÏ".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '22', title: "GéANTS".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '25', title: "LE MAL BLEU".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '26', title: "LE ROYAUME SOUS LE SABLE".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '27', title: "LE BARBARE".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '28', title: "KRISS DE VALNOR".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '29', title: "LE SACRIFICE".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '30', title: "MOI, JOLAN".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '31', title: "LE BOUCLIER DE THOR".humanize, author: "ROSINSKI, SENTE".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '32', title: "LA BATAILLE D'ASGARD".humanize, author: "ROSINSKI, SENTE".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '33', title: "LE BATEAU-SABRE".humanize, author: "ROSINSKI, SENTE".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '34', title: "KAH-ANIEL".humanize, author: "ROSINSKI, SENTE".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "TOKYO GHOST".humanize)
s.books.create!(tome: '1', title: "LE BERGER DES âMES".humanize, author: "JARRY, DJIEF".titleize, editor: "SOLEIL".humanize)
s.books.create!(tome: '2', title: "EDO".humanize, author: "JARRY, DJIEF, COMTOIS".titleize, editor: "SOLEIL".humanize)


s = Serie.create!(name: "TONY CORSO".humanize)
s.books.create!(tome: '1', title: "LA COMTESSE VOLODINE".humanize, author: "BERLION".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "PRIME TIME".humanize, author: "BERLION".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "VLAD".humanize)
s.books.create!(tome: '1', title: "IGOR, MON FRèRE".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '2', title: "LE MAîTRE DE NOVIJANKA".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '3', title: "ZONE ROUGE".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '4', title: "DERNIèRE ISSUE".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '5', title: "TAïGA".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '6', title: "OPéRATION DELUGE".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)
s.books.create!(tome: '7', title: "15 NOVEMBRE".humanize, author: "SWOLFS, GRIFFO".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "WAYNE SHELTON".humanize)
s.books.create!(tome: '1', title: "LA MISSION".humanize, author: "DENAYER, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "LA TRAHISON".humanize, author: "DENAYER, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LE CONTRAT".humanize, author: "DENAYER, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "LE SURVIVANT".humanize, author: "DENAYER, CAILLETEAU".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "LA VENGEANCE".humanize, author: "DENAYER, CAILLETEAU".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "L'OTAGE".humanize, author: "DENAYER, CAILLETEAU".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "LA LANCE DE LONGINUS".humanize, author: "DENAYER, CAILLETEAU".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '8', title: "LA NUIT DES AIGLES".humanize, author: "DENAYER, CAILLETEAU".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "WESTERN".humanize)
s.books.create!(tome: '1', title: "WESTERN".humanize, author: "ROSINSKI, VAN HAMME".titleize, editor: "LOMBARD".humanize)


s = Serie.create!(name: "XIII")
s.books.create!(tome: '1', title: "LE JOUR DU SOLEIL NOIR".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "LA OU VA L'INDIEN…".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "TOUTES LES LARMES DE L'ENFER".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "SPADS".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '5', title: "ROUGE TOTAL".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '6', title: "LE DOSSIER JASON FLY".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '7', title: "LA NUIT DU 3 AOUT".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '8', title: "TREIZE CONTRE UN".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '9', title: "POUR MARIA".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '10', title: "EL CASCADOR".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '11', title: "TROIS MONTRES D'ARGENT".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '12', title: "LE JUGEMENT".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '13', title: "L'ENQUêTE".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '14', title: "SECRET DéFENSE".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '15', title: "LâCHEZ LES CHIENS".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '16', title: "OPéRATION MONTECRISTO".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '17', title: "L'OR DE MAXIMILIEN".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '18', title: "LE DERNIER ROUND".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '19', title: "LA VERSION IRLANDAISE".humanize, author: "VANCE, VAN HAMME".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '20', title: "LE JOUR DU MAYFLOWER".humanize, author: "JIGOUNOV, SENTE".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "XIII Mystery")
s.books.create!(tome: '1', title: "LA MANGOUSTE".humanize, author: "MEYER, DORISON".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '2', title: "IRINA".humanize, author: "CORBEYRAN, BERTHET".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '3', title: "LITTLE JONES".humanize, author: "HENNINOT, YANN".titleize, editor: "DARGAUD".humanize)
s.books.create!(tome: '4', title: "COLONEL AMOS".humanize, author: "ALCANTE, BOUCQ".titleize, editor: "DARGAUD".humanize)


s = Serie.create!(name: "YIYA".humanize)
s.books.create!(tome: '1', title: "LE MANGEUR DE CHAGRIN".humanize, author: "PECQUEUR, GAJIC".titleize, editor: "DELCOURT".humanize)


s = Serie.create!(name: "YONI".humanize)
s.books.create!(tome: '1', title: "DOLLYMORPHING".humanize, author: "BERTHET, YANN".titleize, editor: "DUPUIS".humanize)
