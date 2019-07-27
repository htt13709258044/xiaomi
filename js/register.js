$(()=>{
    var a=true;
    //切换地区列表是否显示
    $(".zone-number,.phone>img").click(e=>{
        if(a==true){
            $(".zone-list").css({"height":"170px","border-top":"1px solid #b8b8b8"});
           a=false;
        }else if(a==false){
            $(".zone-list").css({"height":"0","border-top":"none"});
            a=true;
        }
    })
    $(".zone-list li").click(function(){
        var str=$(this);
        var  a=str.index();
        var b=$(`.zone-list>li:nth-child(${a+1})>span:nth-child(2)`).html();
        $(".zone-number").html(b);

    })
});
$(()=>{
    //失焦验证用户名密码
    $("#uname").blur(e=>{
        var reg=/^1[3|5|7|8]\d{9}$/;
        var uname=$("#uname").val();
        if(uname == ""){
            $(".tip1").html("用户名不能为空");
        }else if(!reg.test(uname)){
            $(".tip1").html("用户名格式不正确，请检查");
        }else{
            $.ajax({
                type:"post",
                url:"data/user/register.php",
                data:{uname:uname},
                success:function(data){
                  console.log(data)
                  if(data.code>0){
                        $(".tip1").html(data.msg);
                    }else{
                        $(".tip1").html(data.msg);
                    }
                },
                error:function(){
                    alert("网络故障，请检查");
                }
            });
        }
    });
    $("#upwd").blur(e=>{
        var reg1=/^[a-zA-Z0-9]{6,12}$/;
        var upwd=$("#upwd").val();
        if(upwd == ""){
            $(".userpwd1").html("密码不能为空");
        }else if(!reg1.test(upwd)){
            $(".userpwd1").html("密码格式不正确，请检查");
        }else{
            $(".userpwd1").html("");
        }
    });
    $("#button").click(function(e){
    e.preventDefault();
    var reg=/^1[3|5|7|8]\d{9}$/;
    var uname=$("#uname").val();
    if(!reg.test(uname)) {
      $(".tip1").html("用户名格式不正确，请检查");
      return;
    }
    $.ajax({
      type:"post",
      url:"data/user/register.php",
      data:{uname:uname},
      success:function(data){
        if(data.code>0){
          $(".account").css("display","none");
          $(".set-upwd").css("display","block");
        }else{
          $(".tip1").html(data.msg);
        }
      },
      error:function(){
        alert("网络故障，请检查");
      }
    });
  })
    /*console.log($('.checkbox').is(":checked"))//false
    if($('.checkbox').is(":checked")){
      $("#button").disabled = true
      $("#button").disabled=false
    }else{
    $(".tip1").html("请确认同意用户协议和隐私政策");

    }*/
    $("#btn-login1").click(function(e){
    e.preventDefault();
    var reg1=/^[a-zA-Z0-9]{6,12}$/;
    var upwd=$("#upwd").val();
    var uname=$("#uname").val();
    if(!reg1.test(upwd)){
      $(".userpwd1").html("密码格式不正确，请检查");
      return;
    }
    $.ajax({
      type:"post",
      url:"data/user/register1.php",
      data:{uname:uname,upwd:upwd},
      success:function(data){
        if(data.code>0){
          $(".userpwd1").html(data.msg);
          alert("注册成功")
          location="login.html"
          /* if(location.search!==""){
             let back=location.search.slice(6)
             location = back
           }else{
             location="login.html"
           }*/
        }else{
          $(".userpwd1").html("");
        }
      },
      error:function(){
        alert("网络故障，请检查");
      }
    });
  });
    $(".back").click(function(e) {
        e.preventDefault();
        $(".account").css("display","block");
        $(".set-upwd").css("display","none");
    })
});