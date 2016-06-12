function log(message) {
    var iframe = document.createElement("IFRAME");
    iframe.setAttribute("src", "sample://"+message);
    document.documentElement.appendChild(iframe);
    iframe.parentNode.removeChild(iframe);
    iframe = null;
}

var count = 0;
function now() {
    var now = new Date();
    var hour = now.getHours();
    var min = now.getMinutes();
    var sec = now.getSeconds();
    log(count+" "+hour+":"+min+":"+sec);
    count++;
    if (count < 10) {
        setTimeout(this.now.bind(this),1);
    }
}

now();



