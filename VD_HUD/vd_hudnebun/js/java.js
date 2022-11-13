window.addEventListener("message", function(event){
    let data = event.data

    if(data.type === "updateHud") {
        document.getElementById("bbani").innerHTML = data.cash;
        document.getElementById("bank").innerHTML = data.bank;
        document.getElementById("ccoins").innerHTML = data.coins;

        document.getElementById("idnervos").innerHTML = data.myId;

        document.getElementById("armurajh").innerHTML = data.armour + "%";
        document.getElementById("viatajh").innerHTML = data.health + "%";
    }


});