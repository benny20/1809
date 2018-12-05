jQuery(function($) {
    var picture = document.querySelector('.mp');
    var wenzi = document.querySelector('.d1');
    var currentId = decodeURI(location.search).slice(1);
    console.log(currentId);
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 304)) {
            var data = JSON.parse(xhr.responseText);
            console.log(data);
            let images = [];
            let str = "";
            let haha = '';
            let xiaoimg = [];

            str = data.bigimg.split("&");
            $.each(str, function(idx, item) {
                images.push(item.substr(0));
                // console.log(images[0]);
            });

            haha = data.smallimg.split("&");
            $.each(haha, function(idx, item) {
                xiaoimg.push(item.substr(0));
                // console.log(xiaoimg[0]);
            });
            //图片渲染
            var res = `<img src=${images[0]} alt="" class="xs" />
                    <div class="xiao">
                    <div class="x1 zuo"><img src=${xiaoimg[0]} alt="" /></div>
                    <div class="x1 you"><img src=${xiaoimg[1]} alt="" /></div>
                </div>`;

            picture.innerHTML = res;

            //文字渲染
            var re = `
                <h2 class="dh">${data.content}</h2>
                <div class="d2">
                    <p>现价：<span><b>￥${data.price}</b></span><span class="oldprice"><del><b>￥${data.oldprice}</b></del></span></p>
                    <div class="d3">
                        <p>2人拼团：</p>
                        <h3 class="price"><b>￥${data.price}</b></h3>
                        <span>评价：190</span>
                        <span>累计销量：723</span>
                    </div>
                </div>
                <p class="kefu">客服：<img src="../../images/detailspicture/kefu.jpg"  alt="" /></p>
                <div class="xuan">
                    <span>颜色：</span>
                    <a><img src=${xiaoimg[0]} alt="" class="xs1" /></a>
                    <a><img src=${xiaoimg[1]} alt="" class="xs2" /></a>
                </div>
                <div class="size">
                    <span>尺码：</span>
                    <div>M</div>
                    <div>L</div>
                    <div>XL</div> 
                </div>
                <div class="num">
                    <span>数量：</span>
                    <input type="button" value="-" class="btn_d"/>
                    <input type="text" value="1" class="sla"/>
                    <input type="button" value="+" class="btn_a"/>
                    <span>库存24949件</span>
                </div>
                <ul class="buy" data-id=${data.id}>
                    <li class="l1"><a href="#">2人拼团购买</a></li>
                    <li class="l2"><a href="#" >现价单独购买</a></li>
                    <li class="l3" data-id=${data.id}><a href=javascript:void(0) class="btnin" ><img src="../../images/detailspicture/car.jpg" /></a></li>
                </ul>
                <div class="fen">
                    <div><i></i><span>4603</span></div>
                    <div>分享</div>
                    <span>举报</span>
                </div>
                <div class="tuihuo">
                    <span>服务承诺：</span>
                    <img src="../../images/detailspicture/7tian.jpg" alt="" />
                    <img src="../../images/detailspicture/fahuo.jpg" alt="" />
                    <img src="../../images/detailspicture/tuihuo.jpg" alt="" />
                </div>
            
                <div class="zhifu">
                    <span>支付方式：</span>
                    <img src="../../images/detailspicture/zhifu.jpg" height="25" width="94" alt="" />
                </div>`;
            wenzi.innerHTML = re;

            var t = $(".sla");
            //初始化数量为1,并失效减
            $('.btn_d').attr('disabled', true);
            //数量增加操作
            $(".btn_a").click(function() {
                    // 给获取的val加上绝对值，避免出现负数
                    t.val(Math.abs(parseInt(t.val())) + 1);
                    if (parseInt(t.val()) !== 1) {
                        $('.btn_d').attr('disabled', false);
                    };
                })
                //数量减少操作
            $(".btn_d").click(function() {
                t.val(Math.abs(parseInt(t.val())) - 1);
                if (parseInt(t.val()) < 1) {
                    t.val(1);
                    $('.btn_d').attr('disabled', true);
                };
            })


            //图片特效   
            var zuo = document.querySelector('.zuo');
            var dt = document.querySelector('.xs');
            var you = document.querySelector('.you');
            var xs1 = document.querySelector('.xs1');
            var xs2 = document.querySelector('.xs2');
            zuo.onmouseover = function() {
                you.style.opacity = 0.5;
                zuo.style.opacity = 1;
                dt.src = images[0];
            }
            you.onmouseover = function() {
                zuo.style.opacity = 0.5;
                you.style.opacity = 1;
                dt.src = images[1];
            }
            xs1.onclick = function() {
                xs2.className = '';
                xs1.className = 'active';
                dt.src = images[0];
            }
            xs2.onclick = function() {
                xs1.className = '';
                xs2.className = 'active';
                dt.src = images[1];
            }
            $('.size').find('div').click(function() {
                $('.size div').removeClass('active');

                $(this).addClass('active');
            });


            $(".d1").on("click", ".btnin", function() {

                let haha = '';
                let xiaoimg = [];
                haha = data.smallimg.split("&");
                $.each(haha, function(idx, item) {
                    xiaoimg.push(item.substr(0));
                    var size = "";
                    //获取尺码
                    $('.size').find('div').each(function() {
                        if ($(this).hasClass('active')) {
                            size = $(this).html();
                        }

                    });
                    var btnin = document.querySelector('.btnin');
                    var id = btnin.parentElement.dataset.id;
                    // console.log(id)
                    var sla = document.querySelector(".sla");
                    var qty = sla.value;
                    var xhr = new XMLHttpRequest();

                    $.ajax({
                        url: "../../api/car.php",
                        type: "get",
                        dataType: "json",
                        data: {
                            id: id,
                            qty: qty,
                            content: data.content,
                            price: data.price,
                            smallimg: data.smallimg,
                            oldprice: data.oldprice,
                            size: size
                        },
                        success: function(data) {

                            // location.href = 'car.html';
                        }
                    })

                });

            })

        }
    }
    xhr.open("get", "../../api/chaid.php?currentId=" + currentId, true);
    xhr.send(null);
})