function calcul_moyenne() {
    var n1 = prompt("Donnez votre premère note : ");
    var n2 = prompt("Donnez votre deuxième note : ");
    var n3 = prompt("Donnez votre troisième note : ");

    var somme = Number(n1) + Number(n2) + Number(n3)

    document.write("Voici la somme : " + somme + "<br>");

    var moyenne = somme/3;
    document.write("Voici la moyenne : " + moyenne + "<br>");

    if (moyenne < 10) {
        document.write("Vous n'êtes pas admis");
    }
    else {
        document.write("Vous êtes admis !")
    }
}
 
function verif_age() {
    let n1 = prompt("Donnez votre âge : ")

    if (n1 < 18) {
        document.write("Vous êtes mineur")
        document.bgColor = "red"
    }
    else {
        document.write("Vous êtes majeur")
        document.bgColor = "green"
    }
}

function test_couleur() {
    let couleur = prompt("Donnez une couleur : ")
    if (couleur == "rouge" || couleur == "red") {
        document.bgColor = "red"
    }
    else if (couleur == "vert" || couleur == "green") {
        document.bgColor = "green"
    }
    else if (couleur == "bleu" || couleur == "blue") {
        document.bgColor = "blue"
    }
    else {
        document.write("La couleur n'est pas pris en compte")
    }
    
}

function simple_affichage() {
    let prénom = prompt("Donnez votre nom : ");
    let nom = prompt("Donnez votre nom");

    document.write('<div style="margin:auto; width:300px; border:2px solid blue;">');
    document.write("Bonjour, " + prénom + " " + nom);
    document.write('</div');
}