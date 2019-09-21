var fileSelect = document.getElementById('fileSelect');
var fileDisplay = document.getElementById('fileDisplay');

fileSelect.onchange = function() {
    var file = fileSelect.value;
    updateDisplay();
};

function updateDisplay(file) {
    file = file.toLowerCase();
    var url = 'xml/' + file + '.xml';

    var http = new XMLHttpRequest();

    http.open('GET', url);
    http.responseType = 'text';
    http.onload = function() {
        fileDisplay.textContent = http.response;
    };

    http.send();
};


// Load 'Personal' by default
updateDisplay('Personal');
fileSelect.value = 'Personal';
