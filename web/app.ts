window.addEventListener('load', function (ev: Event) {
    var txt = document.getElementById("txt");

    if (txt)
        txt.innerText = "Hello world " + new Date();
    else
        alert("element with id 'txt' not found");
});