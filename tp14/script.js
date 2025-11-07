function somme() {
    var a = document.getElementById("qt1").value;
    var b = document.getElementById("qt2").value;
    var c = document.getElementById("qt3").value;
    var d = document.getElementById("prx1").value;
    var e = document.getElementById("prx2").value;
    var f = document.getElementById("prx3").value;

    var g = Number(a) * Number(d)
    var h = Number(b) * Number(e)
    var i = Number(c) * Number(f)

    document.getElementById("rslt1").value = g;
    document.getElementById("rslt2").value = h;
    document.getElementById("rslt3").value = i;

    var j = Number(g) + Number(h) + Number(i)

    document.getElementById("rslt4").value = j;
}

function reinitialiser() {
    document.getElementById("qt1").value = '';
    document.getElementById("qt2").value = '';
    document.getElementById("qt3").value = '';
    document.getElementById("prx1").value = '';
    document.getElementById("prx2").value = '';
    document.getElementById("prx3").value = '';
    document.getElementById("a1").value = '';
    document.getElementById("a2").value = '';
    document.getElementById("a3").value = '';
    document.getElementById("rslt1").value = '';
    document.getElementById("rslt2").value = '';
    document.getElementById("rslt3").value = '';
    document.getElementById("rslt4").value = '';
}

function impr() {
    window.print()
}