function moyenne() {
    var n1 = prompt("Saisissez votre première note : " );
    var n2 = prompt("Saisissez votre deuxième nombre : " );
    var n3 = prompt("Saisissez votre deuxième nombre : ");

    var somme = Number(n1) + Number(n2) + Number (n3);
    var moyenne = somme/3;
    document.write("Voici la moyenne :" + moyenne + "<br>");

    if (moyenne < 10) {
        document.write("Vous êtes redoublant");
    }
    else if (moyenne < 12) {
        document.write("Vous êtes admis - passable");
    }
    else if (moyenne < 14) {
        document.write("Vous êtes admis - bien");
    }
    else {
        document.write("Vous êtes admis - Très bien");
    }
}

function temperature() {
    var temperature = prompt("Saisissez la température d'aujourd'hui : ")


    if (temperature < 10) {
    document.write("Il fait froid")
    }
    else if (temperature < 25) {
        document.write("Il fais une température normal")
    }
    else {
        document.write("Il fais chaud")
    }
}

function comparaison() {
    var n4 = prompt("Saissisez un premier nombre")
    var n5 = prompt("Saisissez un deuxième nombre")

    if (n4 < n5) {
        document.write("Le deuxième chiffre (" + n5 + ") est le plus grand")
    }
    else if (n4 > n5) {
        document.write("Le premier chiffre (" + n4 + ") est le plus grand")
    }
    else {
        document.write("Les deux chiffres sont égaux")
    }
}