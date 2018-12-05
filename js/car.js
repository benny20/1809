jQuery(function($) {

    function xuanran(data) {

        $.ajax({
            url: "../../api/chongxuancar.php",
            type: "GET",
            dataType: 'json',
            success: function(data) {
                // console.log(data);
                biaoge(data);
            }

        });
    }
    xuanran();

    //购物车渲染
    var byxuan = document.querySelector(".byxuan");

    function biaoge(data) {
        byxuan.innerHTML = data.map(function(item, index) {
            var {
                id, content, price, oldprice, size, qty, smallimg
            } = item;
            let images = [];
            let str = "";
            str = item.smallimg.split("&");
            $.each(str, function(idx, item) {
                images.push(item.substr(0));
            });
            return `<tr class="dianpu">
                        <td colspan="7">
                                <input type="checkbox"class="quanxuan"/>
                                <div><a href="#">宿本官方旗舰店</a></div>
                            </td>
                        </tr>
                        <tr class="tr1" data-guid=${id}>
                            <td class="cjw">
                                <div class="chk">
                                    <input type="checkbox"class="gouxuan2"/>
                                </div>
                            </td>
                            <td class="cjw2">
                                <a href="#"><img src=${images[1]} alt=""/></a>
                                <div>
                                    <a href="#">${content}</a>
                                </div>
                            </td>
                            <td class="cj">
                                <!-- <p>颜色：卡其色</p> -->
                                <p>尺码：${size}</p>
                            </td>
                            <td class="cjw3">￥${price}</td>
                            <td class="cjw4">
                                <div class="jiajian">
                                    <a  href="javascript:void(0);"class="btn_d">-</a>
                                    <input type="text" class="sla"value=${qty}>
                                    <a href="javascript:void(0);"class="btn_a">+</a>
                                </div>
                            </td>
                            <td class="cjw5">￥${qty*price}</td>
                            <td class="cjw6">
                            <a href="#"class="shanchu">删除</a>
                            </td>
                        </tr>`

        }).join("");


        //获取文本框对象
        $(".byxuan").on("click", ".btn_a", function() {
            $(this).prev().val(Math.abs(parseInt($(this).prev().val())) + 1);
            if (parseInt($(this).prev().val()) !== 1) {
                $('.btn_d').attr('disabled', false);
            };
            // console.log($(this).parent().parent().prev().html().replace(/\D+/g,""))
            $(this).parent().parent().next().children().text($(this).prev().val() * $(this).parent().parent().prev().html().replace(/\D+/g, ""));
            // console.log($(this).parent().parent().next().children())
            // /^[1-9]+(\.?[0-9]{1,2})$/,'')" >
            subTotal($(this));

        })
        $(".byxuan").on("click", ".btn_d", function() {
            $(this).next().val(Math.abs(parseInt($(this).next().val())) - 1);
            if (parseInt($(this).next().val()) < 1) {
                $(this).next().val(1);
                $('.btn_d').attr('disabled', true);
            }
            $(this).parent().parent().next().children().text($(this).next().val() * $(this).parent().parent().prev().html().replace(/\D+/g, ""));
            subTotal($(this));

        })


        //全选
        var isok = true;
        $('#gouxuan').on('click', function() {
            if (isok) {
                //全选 attr()只能帮到普通属性  id class title ;prop()添加有行为的属性：一般用在单选和复选框
                $(this).find('input').prop('checked', 'checked');
                $('.dianpu input').prop('checked', 'checked');
                $('.tr1 input').prop('checked', 'checked');
            } else {
                //不选
                $(this).find('input').removeAttr('checked');
                $('.dianpu input').removeAttr('checked');
                $('.tr1 input').removeAttr('checked', 'checked');
            }
            isok = !isok;
            updateNum();
        });


        //店铺全选
        $('.dianpu').on('click', '.quanxuan', function() {
            if ($(this).prop("checked")) {
                $(this).parent().parent().next().find('input').prop('checked', 'checked');
                //全选 attr()只能帮到普通属性  id class title ;prop()添加有行为的属性：一般用在单选和复选框
            } else {
                $(this).parent().parent().next().find('input').removeAttr('checked');

            }
            updateNum();

        });


        //删除
        $(".byxuan").on("click", ".cjw6 .shanchu", function() {

            var mes = confirm('您确定要删除该行吗？');
            if (mes) {
                // console.log(111);
                var currentGuid = $(this).closest(".tr1").attr("data-guid");
                $.ajax({
                    url: '../../api/deldan.php',
                    type: 'get',
                    dataType: 'json',
                    data: {
                        id: currentGuid
                    },
                    success: function(data) {
                        // $(this).parent().parent().remove();
                        xuanran(data);
                        updateNum();

                    }.bind($(this))
                });
                // xuanran(data);
            }
        });



        function subTotal(now) { //小计
            var num = now.parent().find('input').val(); //数量
            var price = now.parent().parent().prev().text();
            price = $.trim(price); //工具方法：去除前后空格
            price = price.substring(1);
            // console.log(num,price);
            var all = (num * price).toFixed(2); //保留两个小数，小计：数量*单价
            // console.log(now.parent().parent().next().html())
            now.parent().parent().next().html('￥&nbsp;' + all);
            updateNum();
        }


        //计算总商品、总价
        var arr = [];

        function updateNum() {
            //空数组：存被勾选的行的下标
            arr.length = 0;
            var le = $('.dianpu input').size(); //复选框的总个数
            for (var i = 0; i < le; i++) {
                if ($('.dianpu input').eq(i).prop('checked')) {
                    //意味着这一行被勾选
                    arr.push(i);
                }
            }

            //      console.log(arr);

            //统计被勾选的行对应的数量，累加放到底部对应位置
            //统计被勾选的行对应的小计，累加放到底部对应位置
            var num = 0; //总数量
            var totalPrice = 0; //存总价
            for (var i = 0; i < arr.length; i++) {
                num += $('.sla').eq(arr[i]).val() * 1;
                var price = $('.cjw5').eq(arr[i]).text(); //￥ 199.98
                price = $.trim(price); //去掉前后空格
                // console.log(price)
                price = (price.substring(1) * 1); //199.98
                // console.log(price);
                totalPrice += price;
            }

            //      console.log(num);

            $('.choub').text(num);

            //      console.log(totalPrice.toFixed(2));
            $('.nimab').text('￥' + totalPrice);

        }

        //清空购物车
        $(".clearall").on("click", function() {
            var ss = confirm("您确定要删除全部吗？")
            if (ss) {
                $.ajax({
                    url: '../../api/removecar.php',
                    type: 'get',
                    dataType: 'json',
                    data: {
                        removecar: "yes"
                    },
                    success: function(data) {
                        if (data) {
                            xuanran(data);
                            updateNum();
                            // console.log(666);
                        }
                    }.bind($(this))
                });
            }
            $('#gouxuan').find('input').prop("checked","");
            // updateNum();
            // xuanran(data);
        });


    }



})