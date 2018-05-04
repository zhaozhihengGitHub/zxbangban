/**
 * 涓嶆敮鎸乸laceholder鐢╦s
 */

/**
 * 鍒ゆ柇娴忚鍣ㄦ槸鍚︽敮鎸乸laceholder
 */
function isPlaceholer() {
    var input = document.createElement("input");

    return "placeholder" in input;
}

if (!isPlaceholer()) { // 濡傛灉涓嶆敮鎸乸laceholder灞炴€?

    placeholder.prototype = {
        getwh : function(obj) {// 鍙杋nput|textarea鐨勫楂橈紝灏唋abel璁句负鐩稿悓鐨勫楂?
            return {
                w : obj.offsetWidth,
                h : obj.offsetHeight
            }
        },
        setStyles : function(obj, styles) { // 娣诲姞瀹介珮鍊兼柟娉?
            for ( var p in styles) {
                obj.style[p] = styles[p] + "px";
            }
        },
        init : function() { // 鍒濆鍖?
            var label = this.label,
                input = this.input,
                wh = this.getwh(input);

            if (input.tagName == "textarea") {
                wh.h = 30;
            }

            this.setStyles(label, {
                "width" : wh.w,
                "height" : wh.h,
                "lineHeight" : wh.h,
                "left" : 8,
                "top" : 0
            });

            input.parentNode.appendChild(label);

            label.onclick = function() {
                this.style.display = "none";
                input.focus();
            }

            input.onfocus = function() {
                label.style.display = "none";
            };

            input.onblur = function() {
                if (this.value == "") {
                    label.style.display = "block";
                }
            };
        }
    }

    /**
     * 璁剧疆placeholder鏂规硶
     */
    function placeholder(obj) {

        this.input = obj; // obj涓烘坊鍔犱簡placeholder灞炴€х殑input|textarea
        this.label = document.createElement("label"); // 鍒涘缓label鏍囩

        // label鏍囩鐨刬nnerHTML璁句负input|textarea 鐨刾laceholder灞炴€у€笺€?
        this.label.innerHTML = obj.getAttribute("placeholder");
        this.label.className = "jb_ph";

        if (obj.value != "") {
            this.label.style.display = "none";
        }

        this.init();
    }

    var inpColl = document.getElementsByTagName("input"),
        textColl = document.getElementsByTagName("textarea");

    //html闆嗗悎杞寲涓烘暟缁?
    function toArray(coll){
        for(var i = 0, a = [], len = coll.length; i < len; i++){
            a[i] = coll[i];
        }

        return a;
    }

    var inpArr = toArray(inpColl),
        textArr = toArray(textColl),
        placeholderArr = inpArr.concat(textArr);

    for (var i = 0; i < placeholderArr.length; i++) { // 鍒嗗埆涓哄叾娣诲姞鏇夸唬placeholder鐨刲abel
        if (placeholderArr[i].getAttribute("placeholder")){
            new placeholder(placeholderArr[i]);
        }
    }
}