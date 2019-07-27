$(()=>{
  $.get("data/category/category_list.php").then(data=>{
    // console.log(data)
    // 导航
    var html=""
    for(var p of data[0]){
      // console.log(1)
      html += `<li class="category-list">
							<h2 class="title" href="#"  data-toggle="collapse">
							  <p><i class="iconfont icon-moreunfold"></i></p>
                ${p.fname}
							</h2>
							<div class="children content fade in clearfix">
								<ul class="children-list"></ul>
							</div>
						</li>`
    }
    $('.category-index').html(html)
    //列表
    //console.log(data[1])
    var arr0=[0,0,0,0,0,0,0,0,0,0];
    for(var i=0;i<data[0].length;i++){
      var html=""
      for(var p of data[1]){
        // console.log(p.fid)
        if(p.fid == i+1 ){
          //console.log(p.fid)
          arr0[i] ++
          html +=
            `<li>
              <a class="link" href="close.html">
                <img class="thumb" src="${p.xs}">
                <span class="text">${p.name}</span>
              </a>
             </li>`
        }
      }
      $(`.category-index .category-list:eq(${i}) .children  .children-list`).html(html)
    }
    // console.log([arr0])
    //console.log(arr0.length);
    var floorheight=[]
    for(var num=0;num<arr0.length;num++){
      floorheight[num] = Math.ceil(arr0[num]/5)*136
      // console.log(floorheight[num])
      $(`.accordion .category-list:eq(${num}) .content`).css("height",`${floorheight[num]}`)
    }
    // console.log(floorheight)//[544, 680, 408, 544, 544, 408, 408, 408, 544, 680, 680]
    $(".accordion").on("click","[data-toggle=collapse]",e=>{
      var $tar = $(e.target).next('.content')
      // console.log($tar)
      var indexI = $tar.parent().index()
      // console.log(indexI)
      if($tar.hasClass("in")){
        // console.log($tar.prev().find("p"))
        $tar.removeClass("in").css({"height":0,"border":"0"})
          .prev()
          .find("p").css("border-color","#ff6700")
          .find(".iconfont").addClass("icon-less").css("color","#ff6700").removeClass("icon-moreunfold")
      }else{
        // console.log(floorheight[indexI])
        $tar.addClass("in").css({"height":`${floorheight[indexI]}`,"border-top":"1px solid #eee"})
          .prev().find("p").css("border","")
          .find(".iconfont").addClass("icon-moreunfold").css("color","").removeClass("icon-less")
      }
    })
  })
})
