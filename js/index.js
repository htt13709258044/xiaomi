//广告轮播
$(()=>{
	let LIWIDTH = 1226 , timer = null , moved =0 , wait = 5000 ,liLength = 5;
	$.get("data/index/getCarousel.php").then(data=>{
        // console.log(data);
    // 加载内容
    let html='';
    for(let p of data){
      html+=`<li>
               <a href="${p.href}" title="${p.title}">
                 <img src="${p.img}">
               </a>
             </li> `
    }
    // console.log(data[0]);
    let p0 = data[0]//多添加一张
    html +=`<li>
              <a href="${p0.href}" title="${p0.title}">
                <img src="${p0.img}">
              </a>
            </li> `
    let $ul=$('[data-load=bannerImgs]')
    $ul.html(html).css('width',LIWIDTH*(data.length+1))
    let $ulInds = $('[data-load=bannerInds]')
    $ulInds.html('<li></li>'.repeat(data.length))
      .children().first().addClass('hover')
    //动画定义
    function move(){
      $ul.animate({left:-LIWIDTH*moved},0,function(){
        if(moved === liLength){
          moved = 0
          $ul.css('left',0)
        }
        $ulInds.children(`:eq(${moved})`).addClass('hover').siblings().removeClass('hover')
      })
    }
    //执行动画
    timer = setInterval(()=>{ moved++;move()},wait)
    $('.banner,[data-move=left],[data-move=right]').hover(
      ()=>clearInterval(timer)
      ,
      ()=>timer=setInterval(()=>{
        moved++
        move()
      },wait)
    )
    //导航小圆点点击事件
     $ulInds.on('click','li',e => {
       moved=$(e.target).index()
       $ul.stop(true)//防动画、定时器叠加
       move()
     })
    //左右键点击切换
    $('[data-move=right]').click(e=>{
      e.preventDefault()
      if(!$ul.is(':animated')){
        moved++
        $ul.stop(true)
        move()
      }
    })
    $('[data-move=left]').click(e=>{
      e.preventDefault()
      if(!$ul.is(':animated')){
        if(moved==0){
          $ul.css('left',-LIWIDTH*(data.length))
          moved = liLength
        }
        moved--
        $ul.stop(true)
        move()
      }
    })
	})
})
//倒计时
$(()=>{
  setInterval(function () {
    var date = new Date;
    // console.log(date.getHours())
    var nowHour = parseInt(date.getHours())
    // console.log(nowHour)
    var targetTime = nowHour +1
    // console.log(targetTime)
    $(".time-title").html(`${targetTime}:00场`)
    var nowMinutes = date.getMinutes()
    var minutes = 60-nowMinutes-1
    // console.log(60-nowMinutes-1)
    if(minutes<10){
      $(".minutes").html(`0${minutes}`)
    }else{
      $(".minutes").html(`${minutes}`)
    }
    var nowSeconds = date.getSeconds()
    var seconds = 60-nowSeconds-1
    if(seconds<10){
      $(".seconds").html(`0${seconds}`)
    }else{
      $(".seconds").html(`${seconds}`)
    }
  },1000);
})
//单品轮播
$(()=>{
  let LIWIDTH = 248 , timer = null , moved =0 , duration = 1000 , wait = 5000 ,liLength = 8 , mr=14
  let html=''
  for(var i=0;i<4;i++){
    html+=`<li class="good-item-${i+1}">
                    <a href="#" class="thumb">
                        <img src="img/products/md/phone/mix2320-220.png" alt="">
                    </a>
                    <h3 class="title">
                        <a href="">小米MIX 2</a>
                    </h3>
                    <p class="desc">全面屏2.0，5.99"大屏</p>
                    <p class="price">3299元起</p>
                </li>`
  }
  for(var i=4;i<8;i++){
    html+=`<li class="good-item-${i+1}">
                    <a href="#" class="thumb">
                        <img src="img/index/pic/starhuan.png" alt="">
                    </a>
                    <h3 class="title">
                        <a href="">小米6</a>
                    </h3>
                    <p class="desc">变焦双摄，4 轴防抖</p>
                    <p class="price">2299元起</p>
                </li>`
  }
  let $gl = $(".goods-list")
  $gl.html(html).css("width",LIWIDTH*liLength)
  /*定义动画*/
  function move(){
	$gl.animate({left:-LIWIDTH*moved},0,function(){
        if(moved == liLength){
          moved = 0
          $gl.css('left',0)
        }
        $(".more").children(`:eq(${moved/4})`).css("color","#e0e0e0").siblings().css("color","");
      })
   }
  //执行动画
  function autoPlay(){
      timer = setInterval(()=>{
        moved += liLength/2
        move()
      },wait+duration)
  }
  autoPlay()
  $('.control').hover(
    ()=>clearInterval(timer)
    ,
    ()=>timer=setInterval(()=>{
      moved += liLength/2
      move()
    },wait)
  )
  //点击向前
  $(".control-prev").click(e=>{
    e.preventDefault()
    let $tar = $(e.target)
    //如果已经是第一页，禁止左移，禁止点击
    if(!$gl.is(':animated')){
      if(moved == 0){
        $gl.css('left',0)
      }
        $tar.attr("href","#")
        moved = 0
        $gl.stop(true)
        move()
		$tar.disabled
    }
    // console.log("prev")
  })
  //点击向后
  $(".control-next").click(e=>{
    e.preventDefault()
    let $tar = $(e.target)
    if(!$gl.is(':animated')){
      if(moved==0){
        $gl.css('right',0)
      }
      $tar.attr("href","#")
      moved = liLength/2
      $gl.stop(true)
      move()
	  $tar.disabled
    }
    // console.log("next")
  })
})
//楼层加载
$(()=>{
  $.get("data/index/getFloor.php").then(data=>{
    // console.log(data)
    function  floor (floorIdF,floorIdS) {
		var liNum =parseInt( $(`${floorIdS} .more .tab-list li`).length)
		    let html_floor_1, html_floor_2, html_floor_3, html_floor_4;
    html_floor_1 = html_floor_2 = html_floor_3 = html_floor_4
      =`<ul class="brick-list tab-content clearfix">`
    let i=0,j=0, k=0, w=0
		
    for(let p of data) {
      // console.log(typeof p.floor_num)
      let floor_num = parseInt(p.floor_num)
      if (floor_num == 1) {
        i++
        if (i < 8) {
          html_floor_1 += ` <li class="brick-item brick-item-m">
                      <div class="figure figure-img">
                          <a href="productdetail.html" class="exposure">
                              <img src="${p.pic}" alt="">
                          </a>
                      </div>
                      <h3 class="title">
                          <a href="">${p.title}</a>
                      </h3>
                      <p class="details">${p.details}</p>
                      <p class="price">
                          <span class="nprice">${p.nprice}</span>元
                          <del>
                              <span class="oprice" data-oprice="${p.oprice}">${p.oprice}</span>元
                          </del>
                      </p>
                      <div class="flag flag-saleoff" data-flag="${p.flag}">${p.flag}</div>
                      <div class="review-wrapper">
                          <a>
                              <span class="review">${p.review}</span>
                              <span class="author">${p.author}</span>
                          </a>
                      </div>
                  </li>`
        } else if (i == 8) {
          html_floor_1 += `<li class="brick-item brick-item-s">
                    <div class="figure figure-img">
                        <a href="#" class="exposure">
                            <img src="${p.pic}">
                        </a>
                    </div>
                    <h3 class="title">
                        <a href="#" class="exposure">${p.title}</a>
                    </h3>
                    <p class="price">
                        <span class="num">${p.nprice}</span>元</p>
                </li>`
        }
      }else if (floor_num == 2) {
        j++
        if (j < 8) {
        html_floor_2 += ` <li class="brick-item brick-item-m">
                      <div class="figure figure-img">
                          <a href="#" class="exposure">
                              <img src="${p.pic}" alt="">
                          </a>
                      </div>
                      <h3 class="title">
                          <a href="">${p.title}</a>
                      </h3>
                      <p class="details">${p.details}</p>
                      <p class="price">
                          <span class="nprice">${p.nprice}</span>元
                          <del>
                              <span class="oprice" data-oprice="${p.oprice}">${p.oprice}</span>元
                          </del>
                      </p>
                      <div class="flag flag-saleoff" data-flag="${p.flag}">${p.flag}</div>
                      <div class="review-wrapper">
                          <a>
                              <span class="review">${p.review}</span>
                              <span class="author">${p.author}</span>
                          </a>
                      </div>
                  </li>`
       } else if (j == 8) {
        html_floor_2 += `<li class="brick-item brick-item-s">
                    <div class="figure figure-img">
                        <a href="#" class="exposure">
                            <img src="${p.pic}">
                        </a>
                    </div>
                    <h3 class="title">
                        <a href="#" class="exposure">${p.title}</a>
                    </h3>
                    <p class="price">
                        <span class="num">${p.nprice}</span>元</p>
                </li>`
        }
      }else if(floor_num === 3){
        k++
        if(k<8){
          html_floor_3 += ` <li class="brick-item brick-item-m">
                      <div class="figure figure-img">
                          <a href="#" class="exposure">
                              <img src="${p.pic}" alt="">
                          </a>
                      </div>
                      <h3 class="title">
                          <a href="">${p.title}</a>
                      </h3>
                      <p class="details">${p.details}</p>
                      <p class="price">
                          <span class="nprice">${p.nprice}</span>元
                          <del>
                              <span class="oprice" data-oprice="${p.oprice}">${p.oprice}</span>元
                          </del>
                      </p>
                      <div class="flag flag-saleoff" data-flag="${p.flag}">${p.flag}</div>
                      <div class="review-wrapper">
                          <a>
                              <span class="review">${p.review}</span>
                              <span class="author">${p.author}</span>
                          </a>
                      </div>
                  </li>`
        } else if (k == 8) {
          html_floor_3 += `<li class="brick-item brick-item-s">
                    <div class="figure figure-img">
                        <a href="#" class="exposure">
                            <img src="${p.pic}">
                        </a>
                    </div>
                    <h3 class="title">
                        <a href="#" class="exposure">${p.title}</a>
                    </h3>
                    <p class="price">
                        <span class="num">${p.nprice}</span>元</p>
                </li>`
        }
      }else if(floor_num === 4) {
        w++
        if(w<8){
          html_floor_4 +=` <li class="brick-item brick-item-m">
                      <div class="figure figure-img">
                          <a href="#" class="exposure">
                              <img src="${p.pic}" alt="">
                          </a>
                      </div>
                      <h3 class="title">
                          <a href="">${p.title}</a>
                      </h3>
                      <p class="details">${p.details}</p>
                      <p class="price">
                          <span class="nprice">${p.nprice}</span>元
                          <del>
                              <span class="oprice" data-oprice="${p.oprice}">${p.oprice}</span>元
                          </del>
                      </p>
                      <div class="flag flag-saleoff" data-flag="${p.flag}">${p.flag}</div>
                      <div class="review-wrapper">
                          <a>
                              <span class="review">${p.review}</span>
                              <span class="author">${p.author}</span>
                          </a>
                      </div>
                  </li>`
        } else if(w == 8){
          html_floor_4 +=  `<li class="brick-item brick-item-s">
                    <div class="figure figure-img">
                        <a href="#" class="exposure">
                            <img src="${p.pic}">
                        </a>
                    </div>
                    <h3 class="title">
                        <a href="#" class="exposure">${p.title}</a>
                    </h3>
                    <p class="price">
                        <span class="num">${p.nprice}</span>元</p>
                </li>`
        }
      }
    }
    html_floor_1+=`<li class="brick-item brick-item-s">
              <div class="figure figure-more">
                  <a><i class="iconfont icon-youjiantou"></i></a>
              </div>
              <a class="more">浏览更多<small>热门</small></a>
          </li></ul>`
    html_floor_2+=`<li class="brick-item brick-item-s">
              <div class="figure figure-more">
                  <a><i class="iconfont icon-youjiantou"></i></a>
              </div>
              <a class="more">浏览更多<small>热门</small></a>
          </li></ul>`
    html_floor_3+=`<li class="brick-item brick-item-s">
              <div class="figure figure-more">
                  <a><i class="iconfont icon-youjiantou"></i></a>
              </div>
              <a class="more">浏览更多<small>热门</small></a>
          </li></ul>`
    html_floor_4+=`<li class="brick-item brick-item-s">
              <div class="figure figure-more">
                  <a><i class="iconfont icon-youjiantou"></i></a>
              </div>
              <a class="more">浏览更多<small>热门</small></a>
          </li></ul>`
      $(`${floorIdF}`)
        .html(html_floor_1)
        .append(html_floor_2)
        .append(html_floor_3)
        .append(html_floor_4)
      //鼠标移入右侧导航事件
      $(`${floorIdS} .tab-list`).on("mouseenter","li", function(e) {
        let $tar = $(e.target)
        var i = $tar.index()
        //console.log(i)
        $tar.addClass("tab-active").siblings().removeClass("tab-active")
        //console.log($(` .tab-content:eq(${i})`))
        $(`${floorIdS} .tab-content:eq(${i})`).show().siblings().hide()
      })
    }
    floor("#homeelec-content","#homeelec")
    floor("#smart-content","#smart")
    floor("#match-content","#match")
    floor("#accessories-content","#accessories")
    floor("#around-content","#around")
      $(".home-main .flag:not([data-flag=''])")
        .css("background-color","#e53935")
      $(" .home-main .oprice:not([data-oprice !=''])").parent().css("display","none")
    //鼠标移入商品部动态
    $(".home-main .brick-item").mouseenter(function () {
      $(this).addClass("brick-item-active");
      $(this).children(".review-wrapper").addClass("in");
    })
    $(".home-main .brick-item").mouseleave(function () {
      $(this).removeClass("brick-item-active");
      $(this).children(".review-wrapper").removeClass("in");
    })
  })
})
//热评
$(()=>{
  var html=''
  for(var i=0;i<4;i++){
    html+=`<li class="review-item review-item-first">
                <div class="figure figure-img">
                    <a class="exposure"><img src="img/index/pic/rp2.jpg" width="296" height="220" alt=""></a>
                </div>
                <p class="review">
                    <a href="">超级喜欢！小巧玲珑！音质完美！不知道为什么！只要是小米出的东西我都喜欢！那倒是因为那一句？？小米为发...</a>
                </p>
                <p class="author"> 来自于 田密 的评价</p>
                <div class="info">
                    <h3 class="title">
                        <a href="">小米随身蓝牙音箱</a>
                    </h3>
                    <span class="sep">|</span>
                    <p class="price"><span class="num">59</span>元</p>
                </div>
            </li>`
  }
  $(".review-list").html(html)
})
//视频
$(()=>{
	var html=""
	for(var i=0;i<4;i++){
		html +=`<li class="video-item video-item-first">
            <div class="figure figure-img">
              <a class=" exposure" href="javascript: void(0);">
                <img src="img/index/pic/vb1.jpg" width="296" height="180" alt="品质之魂 存于匠心">
                <span class="play">
                  <i class="iconfont icon-icon-"></i>
                </span>
              </a>
            </div>
            <h3 class="title">品质之魂 存于匠心</h3>
            <p class="desc">红米手机品质的工程师访谈</p>
          </li>`
	}
	$(".video-list").html(html)
	var isVideoShow = false
	$(".video").hide()
	$('.video-list li').eq(0).css("margin",0)
		var v3=document.getElementById("v3")
	$(".video-list").on("click",".icon-icon-",e=>{
		$tar = $(e.target)
			//$tar.toggleClass(".in")
			console.log($tar.index())
		
      /*if(!isVideoShow){
			$(".video").show()
				v3.play()
			isVideoShow = true
		}else{
			$(".video").hide()
				v3.pause()
			isVideoShow = false
		}*/
	})
       
})
//楼层滚动
$(()=>{
  $(window).scroll(()=>{
    let scrollTop = document.documentElement.scrollTop || document.body.scrollTop
    let $f1 = $(".home-brick-box:first");
	  // console.log($f1);
    let offsetTop = $f1.offset().top
    if(offsetTop <= (scrollTop+innerHeight/2)){
      $("#lift").show()
    }else{
      $("#lift").hide()
    }
    let $floor = $(".home-brick-box")
    for(var i=0;i<$floor.length;i++){
      let $f=$($floor[i])
      if($f.offset().top>(scrollTop+innerHeight/2))
        break
    }
    $(`#lift>ul>li:eq(${i-1})`)
      .addClass("lift_item_on")
      .siblings().removeClass("lift_item_on")
  })
  $("#lift>ul").on("click","a.lift_btn",function(){
    let $a = $(this)
    let i = $a.parent().index()
    let offsetTop = $(`.home-brick-box:eq(${i})`).offset().top
    $("html").stop(true).animate({
      scrollTop:offsetTop-50
    },500)
  })
})