function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("resultat").value = c;
}

function multipli()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat").value = c;
}

function sous()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("resultat").value = c;
}

function div()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("resultat").value = c;
}

function pair()
{
    var x = document.getElementById("t1").value
    if (x % 2 ==0){
        document.getElementById("pair").value = " Paire "
    }
    else{
        document.getElementById("pair").value = " Impaire "
    }
}

function perm()
{
    var e = document.getElementById("t1").value;
    var f = document.getElementById("t2").value;
    document.getElementById("t1").value = f
    document.getElementById("t2").value = e
}

function reset()
{
    document.getElementById('reset').onclick = function() {
        var inputs = document.getElementsByTagName('input');
        for (var i = 0; i < inputs.length; i++) {
          var type = inputs[i].type;
          if (type === 'text' || type === 'number') {
            inputs[i].value = '';
          }
        }
      }
}