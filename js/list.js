window.onload = function() {
  var header = document.querySelector('#header');
  var dingbu = document.querySelector('.dingbu');

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
    // denglu.onclick = function() {
    //   location.href = 'login.html';
    // }
  }
  denglu.onclick = function() {
    location.href = 'login.html';
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
        window.scrollTo(0, scrollTop - 100);
        console.log(scrollTop - 20);
      } else {
        clearInterval(timer);
      }
    }, 30);
  }

  var content = document.querySelector('.content');
  // console.log(content);

  function xuanran() {
    $.ajax({
      url: "../../api/list.php",
      type: "GET",
      data: {
        page: 1,
        num: 10
      },
      dataType: 'json',
      success: function(data) {
        // console.log(data);
        render(data);
      }

    });
  }
  xuanran();

  var isok = true;
  page = 1;
  document.onscroll = function() {
    if (content.offsetHeight < (window.innerHeight + window.scrollY)) {
      //准备开关：要新一页数据全部渲染完毕才能加载下一页数据，不然滚动的时候会不断达到临界点，一次加载多片数据，出现bug
      if (isok) {
        isok = false;

        setTimeout(function() {
          page++;
          xuanran();
            //数据渲染

            isok = true;
          
        }, 1000); //延迟2秒钟再加载新的数据进行渲染
      }
    }
  }


  function render(data) {
    content.innerHTML += data.map(function(item) {
      var {
        id, img, content, price, oldprice
      } = item;

      let str = "";
      return `<li  data-id=${id}>
                            <img src=${img} alt="" />
                            <p>${content}</p>
                            <div>
                                <span><b>￥${price}</b></span>
                                <span><del>￥${oldprice}</del></span>
                                <span><i></i>4963</span>
                            </div>
                        </li>`
    }).join("");
  }

  //价格排序
  var onep = document.querySelector('#onep');
  var twop = document.querySelector('#twop');
  var btn = document.querySelector('#btn');
  btn.onclick = function() {
    // console.log(111)
    var val1 = onep.value.trim().slice(1);
    var val2 = twop.value.trim().slice(1);
    // console.log(val1,val2)
    $.ajax({
      url: "../../api/price.php",
      type: "GET",
      dataType: 'json',
      data: {
        "oneprice": val1,
        "twoprice": val2
      },
      success: function(data) {
        // console.log(data);
        render(data);
      }

    });
  }


  content.onclick = function(e) {
    console.log(e.target)
    console.log(666);
    if (e.target.tagName.toLowerCase() == "img") {

      var currentId = e.target.parentElement.dataset.id;
      console.log(currentId);
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 304)) {
          location.href = "details.html?" + currentId;
          // console.log(currentId);
          //         // console.log(xhr.responseText);

        }
      }
    }

    xhr.open("get", "../../api/chaid.php?currentId=" + currentId, true);
    xhr.send(null);

  }

}