
//��չString�๦��
//ɾ���ַ������߿ո�
    String.prototype.trim = function()
    {
     return this.replace(/(^[\s]*)|([\s]*$)/g,"");
    };
    //ɾ���ַ�����߿ո�
    String.prototype.lTrim = function()
    {
     return this.replace(/(^[\s]*)/g,"");
    };
    //ɾ���ַ����ұ߿ո�
    String.prototype.rTrim = function()
    {
     return this.replace(/([\s]*$)/g,"");
    };