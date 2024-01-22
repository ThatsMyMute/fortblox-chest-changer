-- Function to convert number to letter
function numberToLetter(number)
    local base = string.byte("A") - 1
    local quotient = math.floor((number - 1) / 26)
    local remainder = (number - 1) % 26
    local letter = string.char(base + remainder + 1)
    if quotient > 0 then
        return numberToLetter(quotient) .. letter
    else
        return letter
    end
end

-- Assign letters from "A" to "TY" to Chest objects
for i = 1, 201 do
    local letter = numberToLetter(i)
    game:GetService("Workspace").Chests.Chest.Name = letter 
end
