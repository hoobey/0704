
//À©Õ¹StringÀà¹¦ÄÜ
//É¾³ý×Ö·û´®¶þ±ß¿Õ¸ñ
    String.prototype.trim = function()
    {
     return this.replace(/(^[\s]*)|([\s]*$)/g,"");
    };
    //É¾³ý×Ö·û´®×ó±ß¿Õ¸ñ
    String.prototype.lTrim = function()
    {
     return this.replace(/(^[\s]*)/g,"");
    };
    //É¾³ý×Ö·û´®ÓÒ±ß¿Õ¸ñ
    String.prototype.rTrim = function()
    {
     return this.replace(/([\s]*$)/g,"");
    };