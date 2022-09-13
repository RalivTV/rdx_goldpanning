RDX = nil

TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end) 

RDX.RegisterUsableItem('item_goldpan', function(source)
	local xPlayer = RDX.GetPlayerFromId(source)
      
                TriggerClientEvent('rdx_pneira:StartPaning', source)
	TriggerClientEvent("rdx_pneira:alert",source, "used goldpan", 2)

end)

RegisterNetEvent("golding")
AddEventHandler("golding", function()
local xPlayer = RDX.GetPlayerFromId(source)
local roll = math.random(0,10)
local callItem = Config.itemList[roll]
local callText = Config.texList[roll]		

 if callItemm == nil then
     TriggerClientEvent("rdx_pneira:alert",source, "Nothing!", 2)		
     return
 else
     xPlayer.addInventoryItem(callItem, 1)            			
     TriggerClientEvent("rdx_pneira:alert",source, "You found a "..callItem.."!", 2)
 end			
			
		
		
		
		
		
		
    if roll == 3 then 
     xPlayer.addInventoryItem("item_silvernugget", 1) 
     TriggerClientEvent("rdx_pneira:alert",source, "You found a Silver Nugget!", 2)
   elseif roll == 2 then 
     xPlayer.addInventoryItem("smallfish", 1)            
     TriggerClientEvent("rdx_pneira:alert",source, "You found a small fish!", 2)
   elseif roll == 1 then 
     xPlayer.addInventoryItem("item_goldnugget", 1)            
     TriggerClientEvent("rdx_pneira:alert",source, "You found a "..callItem.."!", 2)
   else
     TriggerClientEvent("rdx_pneira:alert",source, "Nothing!", 2)
    end
end)
