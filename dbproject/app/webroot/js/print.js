function preview(){
	var html = document.getElementById("myprint").innerHTML;
    var printname = $("#username").val();
    var imgurl = $("#webroot").val() + "img/se_logo.gif";
    var imghtml = '<img src = "'+imgurl + '>';
    var comName = "Schneider Electric";
    var currentdate = new Date(); 
    var datetime = currentdate.getDate() + "/"+ (currentdate.getMonth()+1)  + "/" + currentdate.getFullYear();
    var space = "&nbsp;&nbsp;&nbsp&nbsp";
    var imghtml = '<img src ="/html/dbproject/img/se_logo.gif">';
    window.document.body.innerHTML = imghtml+"<p>"+comName+space+ datetime+space+printname+"</p>" + html;
    window.print(); 
}
