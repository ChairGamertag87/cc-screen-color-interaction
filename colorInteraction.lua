-- Configure le moniteur
local monitor = peripheral.wrap("back")
if not monitor then
    print("Erreur : Aucun moniteur détecté sur 'right'.")
    return
end
 
monitor.setTextScale(0.5) -- Ajuste l'échelle
term.redirect(monitor)    -- Redirige les affichages vers le moniteur
 
-- Chemin du fichier image
local imagePath = "image.nfp"
 
-- Vérifie si le fichier image existe
if not fs.exists(imagePath) then
    print("Erreur : Le fichier '" .. imagePath .. "' est introuvable.")
    return
end
 
-- Charge et affiche l'image
local image = paintutils.loadImage(imagePath)
if not image then
    print("Erreur : Impossible de charger l'image '" .. imagePath .. "'.")
    return
end
 
paintutils.drawImage(image, 1, 1) -- Affiche l'image
 
-- Table des couleurs pour les signaux de redstone
local colorSignals = {
    [colors.black] = 0
    [colors.white] = 1,
    [colors.orange] = 2,
    [colors.magenta] = 3,
    [colors.lightBlue] = 4,
    [colors.yellow] = 5,
    [colors.lime] = 6,
    [colors.pink] = 7,
    [colors.gray] = 8,
    [colors.lightGray] = 9,
    [colors.cyan] = 10,
    [colors.purple] = 11,
    [colors.blue] = 12,
    [colors.brown] = 13,
    [colors.green] = 14,
    [colors.red] = 15,
}
 
-- Fonction pour envoyer un signal de redstone
local function sendRedstoneSignal(signal)
    if signal then
        -- Active le signal à l'arrière
        redstone.setAnalogOutput("right", signal)
        os.sleep(0.5) -- Garde le signal actif pendant un court moment
        redstone.setOutput("right", false) -- Désactive le signal
    end
end
 
-- Écoute les clics sur le moniteur
while true do
    local event, side, x, y = os.pullEvent("monitor_touch")
 
    -- Récupère la couleur de l'image à la position cliquée
    local color = image[y] and image[y][x] or nil -- Vérifie si la position est valide
    if color then
        -- Vérifie si la couleur a un signal associé
        local signal = colorSignals[color]
        if signal then
            sendRedstoneSignal(signal)
        else
            print("Aucun signal associé à cette couleur : " .. tostring(color))
        end
    else
        print("Clique en dehors de l'image.")
    end
end
