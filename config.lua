-- edit by n0tst3
-- @desc Shared config file
-- @author Elio
-- @version 2.0

-- Global configuration
Config = {
    language = 'de',
    color = { r = 230, g = 230, b = 230, a = 255 }, -- Text color
    font = 0, -- Text font
    time = 5000, -- Duration to display the text (in ms)
    scale = 0.5, -- Text scale
    dist = 250, -- Min. distance to draw 
}

-- Languages available
Languages = {
    ['en'] = {
        doCommandName = 'do',
        doCommandDescription = 'Describe or respond in roleplay.',
        doCommandSuggestion = {{ name = 'action', help = '"Is the door open??" for example.'}},
        doPrefix = ' ' , -- Add prefix if required. i.e "The Person"
        meCommandName = 'me',
        meCommandDescription = 'Displays an action or emote your character is performing.',
        meCommandSuggestion = {{ name = 'action', help = '"shoves his hand in his back pocket" for example.'}},
        mePrefix = ' ' -- Add prefix if required. i.e "The Person"
    },
    ['fr'] = {
        doCommandName = 'do',
        doCommandDescription = 'Décrivez ou répondez dans le jeu de rôle..',
        doCommandSuggestion = {{ name = 'action', help = '"La porte est-elle ouverte??" par exemple.'}},
        doPrefix = ' ' , -- Add prefix if required. i.e "The Person"
        meCommandName = 'me',
        meCommandDescription = 'Affiche une action ou une emote que votre personnage effectue.',
        meCommandSuggestion = {{ name = 'action', help = '"met sa main dans sa poche arrièret" par exemple.'}},
        mePrefix = ' ' -- Add prefix if required. i.e "The Person"
    },
    ['de'] = {
        doCommandName = 'do',
        doCommandDescription = 'Beschreiben oder antworten Sie im Rollenspiel.',
        doCommandSuggestion = {{ name = 'action', help = '"Ist die Tür offen??" zum Beispiel.'}},
        doPrefix = ' ' , -- Add prefix if required. i.e "The Person" 
        meCommandName = 'me',
        meCommandDescription = 'Zeigt eine Aktion oder ein Emote an, das Ihr Charakter ausführt.',
        meCommandSuggestion = {{ name = 'action', help = '"schiebt seine Hand in seine Gesäßtasche" zum Beispiel.'}},
        mePrefix = ' '  -- Add prefix if required. i.e "The Person"
    },
    ['dk'] = {
        doCommandName = 'do',
        doCommandDescription = 'Beskriv eller svar i rollespil',
        doCommandSuggestion = {{ name = 'action', help = '"Er døren åpen?" For eksempel.'}},
        doPrefix = ' ' , -- Add prefix if required. i.e "The Person"
        meCommandName = 'me',
        meCommandDescription = 'Viser en handling eller følelse karakteren din utfører',
        meCommandSuggestion = {{ name = 'action', help = '"dytter hånden i baklommen" For eksempel.'}},
        mePrefix = ' ' -- Add prefix if required. i.e "The Person"
    },
}

