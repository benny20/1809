window.onload = function() {
    var header = document.querySelector('#header');
    // console.log(header)
    var dingbu = document.querySelector('.dingbu');
    $('.search').find('a').eq(0).click(function() {
        $('.search').find('p').html('搜商品');
    })
    $('.search').find('a').eq(1).click(function() {
        $('.search').find('p').html('搜店铺');
    })


    //轮播图
    $('.carousel').carousel({
        interval: 2000
    })

    //登录名
    var denglu = document.querySelector('.denglu');
    var tuichu = document.querySelector('.down');
    var ming = decodeURI(location.search).slice(1);

    if (ming) {
        denglu.innerHTML = ming;
        tuichu.onclick = function() {
            alert('确认要退出吗？')
            denglu.innerHTML = '登录';
        }
    } else {
        denglu.onclick = function() {
            location.href = 'src/html/login.html';
        }

    }
    //滚动条事件
    window.onscroll = function() {
            //吸顶
            if (window.scrollY >= 500) {
                header.className = "xd";
            } else if (window.scrollY <= 0) {
                header.className = "";

            }
            //隐藏返回顶部按钮
            if (window.scrollY >= 700) {
                dingbu.style.display = "block";
            } else if (window.scrollY < 700) {
                dingbu.style.display = "none";
            }
        }
        //返回顶部
    dingbu.onclick = function() {
        var timer = setInterval(function() {
            var scrollTop = window.scrollY; //
            if (scrollTop > 0) {
                window.scrollTo(0, scrollTop - 300);
                console.log(scrollTop - 20);
            } else {
                clearInterval(timer);
            }
        }, 30);
    }

    var main = document.querySelector('.main');
    var lis = $(".main").children();

    function render(data) {
        for (var i = 0; i < data.length; i++) {
            var oP = "";
            var oC = "";
            if (data[i].show) {
                oP = data[i].show;
            }
            if (data[i].content) {
                oC = data[i].content;
            }
            // console.log(i);
            var str = `<div data-id="${data[i].id}">
                        <img src=${data[i].img} alt="" />
                        <div class="name">
                            <a href="#">
                                <i><img src=${data[i].userPic} alt="" /></i>
                                <p>${data[i].username}</p>
                                <span>${oP}</span> 
                            </a>

                            <div>
                                <i></i>
                                <span>收藏</span>
                            </div>
                        </div>
                        <div class="content">${oC}</div>
                    </div>`;
            var index = getShort();
            lis[index].innerHTML += str;

        }
        var index1 = gethei();

        var l = $(".list").children().eq(index1).css("top");
        l = l.slice(0, -2);

        var h = lis[index].offsetHeight * 1 + 30 + l * 1;
        $("#main .list").css("height", h + "px");

    }

    //渲染
    function xuanran() {
        $.ajax({
            url: "api/111.php",
            type: "GET",
            data: {
                page: 1,
                num: 10
            },
            dataType: 'json',
            success: function(data) {
                render(data);

            }

        });
    }
    xuanran();

    //求第一次渲染的高度
    var i = getShort();
    var index2 = gethei();
    console.log(index2)
    var s = $(".list").children().eq(index2).css("top");
    s = s.slice(0, -2);
    var ho = lis[i].offsetHeight * 1 + 30 + s * 1;
    // console.log(ho)
    // 懒加载
    var isok = true;
    page = 1;
    document.onscroll = function() {
        if (ho < (window.innerHeight + window.scrollY)) {
            //准备开关：要新一页数据全部渲染完毕才能加载下一页数据，不然滚动的时候会不断达到临界点，一次加载多片数据，出现bug

            if (isok) {
                isok = false;

                setTimeout(function() {
                    page++;
                    xuanran();

                    isok = true;

                }, 1000); //延迟2秒钟再加载新的数据进行渲染
            }
        }
    }

    //找到最短一列
    function getShort() { //比较，找到最短的一列
            var num = lis[3].offsetHeight * 1 + lis[3].offsetTop; //第一列
            var index = 3;

            for (var i = 3; i < lis.length; i++) {
                var t = lis[i].offsetHeight * 1 + lis[i].offsetTop
                if (num > t) {
                    num = t;
                    index = i;
                }
                // console.log(t,i);
            }

            return index; //找到最短的一列的下标
        }
        //找最长一列设置为高度
    function gethei() {
        var num = lis[3].offsetHeight * 1; //第一列
        var index = 3;

        for (var i = 3; i < lis.length; i++) {
            var t = lis[i].offsetHeight * 1;
            if (num < t) {
                num = t;
                index = i;
            }
            // console.log(t,i);
        }

        return index;
    }

    //点击跳转列表页
    $('.tiaozhuan a').click(function() {
            location.href = 'src/html/list.html?' + ming;
        })
        // $('.tioazhuan a')

}