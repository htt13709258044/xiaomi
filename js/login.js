//切换登录方式
$(()=>{
    $(".nav_tabs_panel>.nav_tabs>.navtab-link").click((e)=>{
        let $tar = $(e.target);
        let $qwd=$('[data-con=pwd]')
        let $qr=$('[data-con=qr]')

        $tar.addClass('now').siblings().removeClass('now');
        if($tar.text().trim() === '账号登录'){
          //console.log(1);
          $qwd.removeClass('hide');
          $qr.addClass('hide');
        }else if($tar.text().trim() === '扫码登录'){
          $qwd.addClass('hide');
          $qr.removeClass('hide');
        }
    })
})
//用户名密码验证
$(()=>{
    $("#username").blur(e=>{
        var reg=/(^[\w.\-]+@(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,3}$)|(^1[3|4|5|8]\d{9})$/;
        var uname=$("#username").val();
        if(uname == ""){
            $(".useruname").html("用户名不能为空");
        }else if(!reg.test(uname)){
            $(".useruname").html("用户名格式不正确，请检查");
        }else{
            $(".useruname").html("");
        }
    });
    $("#pwd").blur(e=>{
        var reg1=/^[a-zA-Z0-9]{6,12}$/;
        var upwd=$("#pwd").val();
        if(upwd == ""){
            $(".userpwd").html("密码不能为空");
        }else if(!reg1.test(upwd)){
            $(".userpwd").html("密码格式不正确，请检查");
        }else{
            $(".userpwd").html("");
        }
    });
  console.log(history)
  $("#login-button").click(function(e) {
        e.preventDefault();
        var uname = $("#username").val();
        var upwd = $("#pwd").val();
        var reg = /(^[\w.\-]+@(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,3}$)|(^1[3|4|5|8]\d{9})$/i;
        if (!reg.test(uname)) {
            $(".useruname").html("用户名格式不正确，请检查");
            return;
        }
        var codeReg = /^[a-zA-Z0-9]{6,12}$/i;
        if (!codeReg.test(upwd)) {
            $(".userpwd").html("密码格式不正确，请检查");
            return;
        }
        $.ajax({
            type:"post",
            url:"data/user/login.php",
            data:{uname:uname,upwd:upwd},
            success:function(data){
                //console.log(data)
                if(data.code>0){
                    $(".userpwd").html(data.msg);
                    console.log("登录成功")
                     if(history.length==2){
                        location="index.html"
                     }else{
                       location = location+history.go(-1)
                     }
                }else{
                    $(".userpwd").html(data.msg);
                }
            },
            error:function(){
                alert("网络故障，请检查");
            }
        });
    })
    $(window).keyup(e=>{
        if(e.keyCode==13){
          $("#login-button").click()
        }
    })
});