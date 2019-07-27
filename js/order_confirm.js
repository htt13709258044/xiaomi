/**加载已勾选的购物车条目**/
$.get("data/cart/list_checked.php").then(result=>{
  console.log(result)
  if(result.code===200){
    var totalPrice = 0;
    var html = '';
    $.each(result.data, function(i,p){
      totalPrice +=p.nprice*p.count;
      html += `
        <ul class="item_detail">
            <li class="p_info">
                <b><img src="${p.sm}"/></b>

                <b class="product_namepf">
                    ${p.title}
                </b>
                <br/>
            <span class="product_color ">
               规格：${p.spec}
            </span>
            </li>
            <li class="p_price">
                <i></i>
                <br/>
                <span class="pro_price">￥<span class="ppp_price">${p.nprice}</span></span>
            </li>
            <li class="p_count">X<span>${p.count}</span></li>
            <li class="p_tPrice">￥<span>${p.nprice*p.count}</span></li>
        </ul>
        `;
    })
    $('#product_list').html(html);
  }
})
