Open server settings and go to the Emoji section. Run in console

```javascript
var a = window.open("");
var p = document.querySelectorAll("[class*=emojiImage]");
var e = document.querySelectorAll("[class*=emojiInput]");

a.document.write("============== list.txt<br/><br/>");

for (var i = 0; i < p.length; i++) {
  a.document.write(p[i].style.backgroundImage.split('"')[1].split('?')[0] + "<br/>");
}

a.document.write("============== rename_emojis.sh<br/><br/>");

for (var i = 0; i < p.length; i++) {
  var filename = p[i].style.backgroundImage.split('"')[1].split(/\?|\//)[4];
  var extension = filename.split('.')[1];  
  a.document.write("mv " + filename + " " + e[i].value + '.' + extension + "<br/>");
}
```

For Stickers

```javascript

var a = window.open("");
var p = document.querySelectorAll("[class*=stickerAsset]");
var e = document.querySelectorAll("[class*=stickerName]");

a.document.write("============== list_stickers.txt<br/><br/>");

for (var i = 0; i < p.length; i++) {
  a.document.write(p[i].src.split('?')[0] + "<br/>");
}

a.document.write("============== rename_stickers.sh<br/><br/>");

for (var i = 0; i < p.length; i++) {
    var filename = p[i].src.split(/\?|\//)[4];
    var extension = filename.split('.')[1];
    a.document.write("mv " + filename + " \"" + e[i].innerText + '.' + extension + "\"<br/>");
}

```

Modify the files in scripts to download the files and rename