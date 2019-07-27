$(()=>{//加载头部
  $.get({
    url:"header.html"
  }).then(html=>{
    $(".header").html(html)
    //搜索框焦点动态
    $(".search-text").focus(function(e){
      $(".search-hot-words").hide()
		 $(".result-list").show()
      $(document.body).on(//点击触发
        "click",
        "[data-trigger=search]",
        function(){
          let $btn=$(".search-btn")
          let $searchText=$btn.prev()
          console.log($searchText.val())
            location="close.html"
        })
      $(document.body).on(//模拟触发
        "keyup",
        ".search-text",
        e=>{
          let $searchText=$(e.target)
          let $resultList=$(".result-list")
          switch(e.keyCode){
            case 13 :
              $searchText.next().click()
              break
            case 38 :
              if(!$resultList.is(":has(.focus)"))
                $resultList.children().last()
                  .addClass("focus")
              else if($resultList.children().first().is(".focus")){
                $resultList.children().removeClass("focus")
                  .last().addClass("focus")
              }else{
                $resultList.children(".focus").removeClass("focus")
                  .prev().addClass("focus")
              }
              var InValue = $resultList.children(".focus").first().children().first().html()
              var Ival = InValue .trim()
              $(".search-text").val(Ival)
              break
            case 40 :
              if(!$resultList.is(":has(.focus)"))
                $resultList.children().first()
                  .addClass("focus")
              else if($resultList.children().last().is(".focus")){
                $resultList.children().removeClass("focus")
                  .first().addClass("focus")
              }else{
                $resultList.children(".focus").removeClass("focus")
                  .next().addClass("focus")
              }
              var InValue = $resultList.children(".focus").first().children().first().html()
              var Ival = InValue .trim()
              $(".search-text").val(Ival)
              break
            default:
              if($searchText.val().trim()!==""){
                $(".search-text").val($searchText.val())
                $.get("data/products/autocomplete.php",{
                  term:$searchText.val().trim()
                }).then(data=>{
                  let html=""
                  for( let p of data){
                    html+=`<li data-key="title" >
                        <a href="#">${p.title} </a>
                        <span class="result">约有${p.stock}件</span>
                    </li>`
                  }
                  $resultList.html(html).show()
                })
              }
          }
        }
      )
      let search=location.search
      if(search.indexOf("kw")!=-1)
        $(".search-text").val(decodeURI(search.split("=")[1]))
      $.get("data/products/autocomplete.php").then(data=>{
        //console.log(data)
        let html = ''
        for(var p of data){
          if(p.isHot == 1){
            html += `<li data-key="title" >
                        <a href="#">${p.title}</a>
                        <span class="result">约有${p.stock}件</span>
                    </li>`
          }
        }
        $(".result-list").html(html)
        $(".result-list").css({"border":"1px solid #ff6700","border-top":"none"})
        $(".search-text").addClass("search-active")
        $(".search-btn").addClass("search-active")
      })
    })
    $(".search-text").blur(function(){
      $(".search-hot-words").show()
		  location.reload()
      let timer =setTimeout(function () {
        $(".result-list").hide().css("border",'')
      },200)
      $(".search-text").removeClass("search-active").val("")
      $(".search-btn").removeClass("search-active")
      if($(".search-btn").prev().val() !== ""){
        $(".search-hot-words").hide()
      }
    })
    //购物车下拉展示
    $(".dropdown").mouseenter(e=>{
      let num = 0
      let HEIGHT,$tar=$(e.target)
      if(num == 0){
        HEIGHT = 100
        $(".dropdown-menu>span").removeClass("hide")
      }else{
        $.get("data/cart/getShoppingCart.php").then((data)=>{
          num = data.length
          HEIGHT = num*30+20
          let html = ''
          for(var p of data){
            html +=`<li>${data.title}</li>`
          }
          $(".cartList").html(html)
        })
      }
      $(".dropdown-menu").addClass("in").css("height",HEIGHT+"px")
    })
    $(".dropdown").mouseleave(e=>{
      $tar=$(e.target)
      $(".dropdown-menu").removeClass("in").css("height",0)
    })
    //登录状态
    function isLogin(){
      $.get("data/user/isLogin.php").then(data=>{
           // console.log(data)
          if(data.ok == 0){//未登录状态
            $("[data-toggle=loginList]").show()
            $("[data-toggle=welcomeList]").hide()
            $(".order").hide()
          }else{
            $("[data-toggle=loginList]").hide()
            $("[data-toggle=welcomeList]").show().children(".user-name").html(`${data.uname}`)
            $("[data-toggle=welcomeList]").mouseenter(e=>{
              let $tar=$(e.target)
              $(".user-menu").addClass("in")
            })
            $("[data-toggle=welcomeList]").mouseleave(e=>{
              let $tar=$(e.target)
              $(".user-menu").removeClass("in")
            })
          }
        })
    }
    isLogin()
    //为登录按钮绑定事件
    $(document.body).on( "click","[data-toggle=loginList]>link:first-child",e=>{
      let $tar= $("e.target")
      location= "index.html"
    })
    //为注销按钮绑定事件
    $(document.body).on("click","[data-toggle=welcomeList]>.user-menu>li>.logout",e=>{
      $.get("data/user/logout.php").then(()=>{
        location.reload(true)
        isLogin()
      })
    })
    //导航部分加载全部分类
    let url_all = location.pathname
    let url = url_all.slice(url_all.lastIndexOf('/') + 1, -5).trim()
    if(url==''||url=="index"){
      //首页隐藏 全部分类标题
      $(".link-site-category>span").css({"display":"inline-block","height":"0","overflow":"hidden"})
      $(".logo").removeClass("ir")
      $(".header-logo .gif").removeClass("hide")
    }
    else{
      $(".header-logo .gif").addClass("hide")
      $(".site-category").css({"height":"0","overflow":"hidden"})
      $(".link-site-category>span").mouseenter(()=>{
        $(".site-category").css({
          "display":"block",
          "height":460,"overflow":"",
          "border":"1px solid #dd6700"
        })
        $(".site-category>.site-category-list").css("background","#fff")
        $(".site-category-list .site-category-item .title").css("color","#000")
      })
      $(".link-site-category>span").click(()=>{
        location="productlist.html"
      })
      $(".nav-site-category").mouseleave(()=>{
        $(".site-category").css({"height":"0","overflow":"hidden","border":""})
      })
      $(".header-logo>.logo").mouseover(()=>{$(".header-logo>.logo").css("right",55)})
      $(".header-logo>.logo").mouseout(()=>{$(".header-logo>.logo").css("right",0)})
      $("site-category-list").css("background","#fff")
    }
    //加载商品列表
    $.get("data/category/category_list.php").then(data=>{
      //console.log(data)
      // 导航
      var html="";
      for(var p of data[0]){
        html += `<li class="site-category-item">
							<a class="title" href="#" >${p.fname}<i class="iconfont icon-qianjinxiayige"></i></a>
							<div class="children clearfix">
								<ul class="children-list"></ul>
							</div>
						</li>`
      }
      $(".site-category-list").html(html)
      //列表
      //console.log(data[1])
      for(var i=1;i<=data[0].length;i++){
        var html=""
        for(var p of data[1]){
          // console.log(p.fid)
          if(p.fid == i ){
            // console.log(p)
            html += `<li>
                  <a class="link" href="#">
                    <img class="thumb" src="${p.xs}">
                    <span class="text">${p.name}</span>
                  </a>
                </li>`
          }
        }
        $(`.site-category-list .site-category-item:eq(${i - 1}) .children  .children-list`).html(html)
      }
    })
    //加载二级菜单
    $(()=>{
      var html = ''
      for(var i=0;i<5;i++){
        html +=  `<li>
                      <div class="figure figure-thumb">
                          <a href="productdetail.html" >
                              <img src="img/products/md/phone/note2320x220.png" alt="小米Note 2">
                          </a>
                      </div>
                      <div class="title">
                          <a href="#">小米Note 2</a>
                      </div>
                      <p class="price">2599元起</p>
                      <div class="flags">
                          <div class="flag">新品</div>
                      </div>
                  </li>`
      }
      $(".nav-item>[data-stat=phone]>.children-list").html(html)
      $(".nav-item>[data-stat=phone]>.children-list>li:eq(0)").addClass("first")
    })
    $(()=>{
      var html = ''
      for(var i=0;i<6;i++){
        html +=  `<li>
                      <div class="figure figure-thumb">
                          <a href="productdetail.html" >
                              <img src="img/products/md/phone/5P-320-220.png" alt="">
                          </a>
                      </div>
                      <div class="title">
                          <a href="#">红米5 Plus</a>
                      </div>
                      <p class="price">2299元起</p>
                      <div class="flags">
                          <div class="flag">新品</div>
                      </div>
                  </li>`
      }
      $(".nav-item>[data-stat=rphone]>.children-list").html(html)
      $(".nav-item>[data-stat=rphone]>.children-list>li:eq(0)").addClass("first")
	})
    $(()=>{
      var html = ''
      for(var i=0;i<5;i++){
        html +=  `<li>
                      <div class="figure figure-thumb">
                          <a href="productdetail.html" >
                              <img src="img/products/md/tv/320_49.png" alt="">
                          </a>
                      </div>
                      <div class="title">
                          <a href="#">红米电视 49英寸</a>
                      </div>
                      <p class="price">2399元起</p>
                      <div class="flags">
                          <div class="flag">热卖</div>
                      </div>
                  </li>`
      }
      $(".nav-item>[data-stat=tv]>.children-list").html(html)
      $(".nav-item>[data-stat=tv]>.children-list>li:eq(0)").addClass("first")})
  })
});

