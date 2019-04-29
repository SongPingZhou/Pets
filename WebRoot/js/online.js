//keywords text
(function(){
	var B=["澶栧","閽堢粐琛�","涓濊","甯藉瓙"];
	
	var R=[3,3,3,3];
	
	var x=0;
	
	for(var i=0;i<B.length;i++){
		x+=R[i]||1;
	if
		(!R[i])R.push(1)
	};
	var y=Math.ceil(Math.random()*x),z=[],m=[],n;
	
	for (var i=1;i<x+1;i++){
		z.push(i);
	};
	for (var i=0;i<B.length;i++){
		m[i]=z.slice(0,R[i]);
		
		z.splice(0,R[i]);
	};
	for(var i=0;i<m.length;i++){
		for (var j=0;j<m[i].length;j++){
			if (y==m[i][j]){
				n=i;
			}
		}
	};
	
	B=B[n];
	
	$("#birds").val(B).bind("focus",function(){
		if (this.value==B){
			this.value="";this.className="focus_text"
		}
	}).bind("blur",function(){
		if (this.value==""){
			this.value=B;this.className="blur_text"
		}
	});	
	
})();


//qq online
document.write('<div id="online" class="online">');
document.write('<div class="div_tit"></div>');
document.write('<div class="div_meun">');
document.write('<div class="t"></div>');
document.write('<div class="m">');
document.write('<div class="infobox">上班时间<br />8:00-22:00</div>');
document.write('<div class="con">');
document.write('<ul>');
document.write('<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1312160198&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1312160198:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li>');
document.write('<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1312160198&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1312160198:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li>');
document.write('<li>联系方式<br />13837805243<br />18625927502</li>');
document.write('</ul>');
document.write('</div>');
document.write('</div>');
document.write('<div class="b"></div>');
document.write('</div>');
document.write('</div>');

function isIE6() {
    if (navigator.appName == "Microsoft Internet Explorer") {
        var reg = /msie (\d)/ig;
        var arr = reg.exec(navigator.appVersion);
        if (arr[1] <= 6) return true;
    }
    return false;
};

$(document).ready(function() {
    $("#online").css({
        right: $(window).width() - $("#online").outerWidth(),
        top: 150
    }).hover(function() {
        $(this).removeClass("online").addClass("online_hover").css({
            right: $(window).width() - $("#online").outerWidth()
        });

    }, function() {
        $(this).removeClass("online_hover").addClass("online").css({
            right: $(window).width() - $("#online").outerWidth()
        });
    })
    $(window).bind("resize", dwonline);
    $(window).bind("scroll", dwonline);
});

function dwonline() {
    var div = $("#online");
    if (isIE6()) {
        div.css({
            right: $(window).width() - $("#online").outerWidth(),
            top: $(window).scrollTop() + 150
        })
    } else {
        div.css({
            right: $(window).width() - $("#online").outerWidth(),
            top: 150
        })
    }
};

//鍔犲叆鏀惰棌
function bookmark(){
	var a="http://www.mailuke.com/";
	var b="楹﹁矾瀹㈠晢鍩�璐拱妯″瀷鐜╁叿锛岀渷閽卞張鏀惧績";
	if(document.all){
		window.external.AddFavorite(a,b)
	}else if(window.sidebar){
		window.sidebar.addPanel(b,a,"")
	}else{
		alert("瀵逛笉璧凤紝鎮ㄧ殑娴忚鍣ㄤ笉鏀寔姝ゆ搷浣�\n璇锋偍浣跨敤鑿滃崟鏍忔垨Ctrl+D鏀惰棌鏈珯銆�")
	}
}