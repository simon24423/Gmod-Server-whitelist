-- Erstelle eine Tabelle, um die SteamIDs der Teammitglieder zu speichern
local whitelist = {
    ["STEAM_0:1:244521127"] = true, -- Beispiel für eine SteamID auf der Whitelist
    ["STEAM_0:0:87654321"] = false, -- Weitere SteamID auf der Whitelist
    -- Füge hier weitere SteamIDs hinzu, falls erforderlich
}

-- Hook, der aufgerufen wird, wenn ein Spieler den Server betritt
hook.Add("PlayerAuthed", "WhitelistCheck", function(ply, steamid, uniqueid)
    -- Überprüfe, ob die SteamID des Spielers auf der Whitelist steht
    if whitelist[steamid] then
        -- Spieler ist auf der Whitelist, erlaube den Zugriff
        print(ply:Nick() .. " ist ein Teammitglied und hat Zugriff auf den Server.")
    else
        -- Spieler ist nicht auf der Whitelist, sende ihm eine Nachricht und kick ihn
        ply:Kick("Du bist kein Teammitglied!")
        print(ply:Nick() .. " ist kein Teammitglied und wurde vom Server gekickt.")
    end
end)
