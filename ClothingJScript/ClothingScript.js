
function myFunction() {
    alert("Thanks for watching this ad");
}

function newTab(url) {
    confirm("Your page will open in a new tab");
    var win = window.open(url, '_blank');
    win.focus();
}

function working() {
    alert("working");
}

function Search(color) {
    var clColor = document.getElementById("colorSelector").value;
    alert(clColor);
    if (clColor == "blue")
        return color.innerText = "blue"; 
    if (clColor == "black")
        return color.innerText = "black"; 
    if (clColor == "orange")
        return color.innerText = "orange"; 
    if (clColor == "green")
        return color.innerText = "green"; 
    if (clColor == "red")
        return color.innerText = "red"; 
    if (clColor == "white")
        return color.innerText = "white";
    else {
        return color.innerText = "default";
    }
}

function removal() {
    var parent = document.getElementById("adrightlow");
    var child = document.getElementById("advertise");

    parent.removeChild(child);
}

function swap(div1, div2) {
    d1 = document.getElementById("wishlist");
    d2 = document.getElementById("wlinput");

    if (d2.style.display == "none") {
        d1.style.display = "none";
        d2.style.display = "flex";

    } else {
        d1.style.display = "flex";
        d2.style.display = "none";
    }
}

function Populate() {
   
    var options = ["Nike", "Adidas", "Under Armor", "Express", "Levi", "Dockers"];
    var brands = document.getElementById("favbrand");

        for (var i = 0; i < options.length; i++) {
            var opt = document.createElement("option");
            opt.innerHTML = options[i];
            opt.value = options[i];
            brands.appendChild(opt);
    }
}

function swapngrow(div1, div2) {
    d1 = document.getElementById("footerorig");
    d2 = document.getElementById("footerswap");

    if (d2.style.display == "none") {
        d1.style.display = "none";
        d2.style.display = "flex";

    } else {
        d1.style.display = "flex";
        d2.style.display = "none";
    }
}

