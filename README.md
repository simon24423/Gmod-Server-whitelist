Whitelist-System für Garry's Mod

Dieses Skript für Garry's Mod ermöglicht es, eine Whitelist für Teammitglieder zu erstellen, die Zugriff auf den Server haben sollen.

--Installation--
Kopiere den Inhalt dieses Skripts in eine neue Lua-Datei in deinem Garry's Mod-Server.
Füge die Lua-Datei in den entsprechenden Ordner deines Garry's Mod-Servers ein.

--Verwendung--
Öffne die Lua-Datei, um die Tabelle whitelist zu bearbeiten.
Füge die SteamIDs der Teammitglieder hinzu, die Zugriff haben sollen.
Setze den Wert auf true, wenn das Teammitglied Zugriff haben soll, oder auf false, wenn nicht.

--Beispiel--

local whitelist = {
    ["STEAM_0:1:244521127"] = true, -- Beispiel für eine SteamID auf der Whitelist
    ["STEAM_0:0:87654321"] = false, -- Weitere SteamID auf der Whitelist
    -- Füge hier weitere SteamIDs hinzu, falls erforderlich
}


--Funktionsweise--
Das Skript verwendet einen Hook, der beim Authentifizieren eines Spielers aufgerufen wird. Es überprüft, ob die SteamID des Spielers in der whitelist-Tabelle enthalten ist.
Wenn ja, wird dem Spieler der Zugriff auf den Server gewährt. Andernfalls wird der Spieler gekickt und eine entsprechende Nachricht wird ihm gesendet.

--Hinweis--
Dieses Skript ist anpassbar und kann je nach Bedarf erweitert oder modifiziert werden, um den Anforderungen deines Servers zu entsprechen.
