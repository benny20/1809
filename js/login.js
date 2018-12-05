document.addEventListener('DOMContentLoaded', function() {
    var username = document.querySelector('#username');
    var usninf = document.querySelector('.baocuo');
    var isok = false;
    var btn = document.querySelector('#button');
    var psw = document.querySelector('#password');
    var update = document.querySelector('.update');
    var ul = document.getElementsByClassName('ul')[0];
    var li = ul.children;
    btn.onclick = function() {
        if (li[0].key && li[1].key && li[2].key && li[3].key) {
            var val = username.value.trim();
            var psw = password.value.trim();
            if (val && psw) {
                var url = '../../api/login.php';
                var data = `username=${val}&psw=${psw}&time=${new Date()}`;
                ajax('POST', url, data, function(str) {
                    console.log(str);
                    if (str == 'yes') {
                        Cookie.set("username",val, {
                            "path": "/"
                        });
                        location.href = "../../index.html?" + val;
                    } else {
                        usninf.style.display = 'block';
                        usninf.innerHTML = '用户名和密码有误';
                    }
                });
            } else {
                usninf.style.display = 'block';
                usninf.innerHTML = '请输入内容';
            }
        } else {
            alert("验证错误");
        }



    }

    // //随机图片，点击图片可旋转
    function randomPic() {
            var arr = ['../../randompicture/1(1).jpg', '../../randompicture/1(2).jpg', '../../randompicture/1(3).jpg', '../../randompicture/1(4).jpg', '../../randompicture/1(5).jpg', '../../randompicture/1(6).jpg', '../../randompicture/1(7).jpg', '../../randompicture/1(8).jpg', '../../randompicture/1(9).jpg', '../../randompicture/1(10).jpg', '../../randompicture/1(11).jpg', '../../randompicture/1(12).jpg', '../../randompicture/1(13).jpg', '../../randompicture/1(14).jpg', '../../randompicture/1(15).jpg', '../../randompicture/1(16).jpg', '../../randompicture/1(17).jpg', '../../randompicture/1(18).jpg', '../../randompicture/1(19).jpg', '../../randompicture/1(20).jpg'];

            for (var i = 0; i < li.length; i++) {
                li[i].index = i;
                li[i].key = false;
                var randomNum = Math.floor((Math.random() * arr.length));
                li[i].style.background = "url('" + arr[randomNum] + "')";
                rotate(li[i]);
                li[i].onclick = function() {
                    keyTrue(this);
                }

            }
        }
        // //判断验证码是否正确
    function keyTrue(obj) {
            var deg = obj.style.transform;
            // console.log(deg);
            var reg = /[0-9]+/;
            var str = deg.match(reg);
            // console.log(str)
            str = str[0] * 1 + 90;
            // console.log(str)
            obj.style.transform = "rotate(" + str + "deg)";
            if (str % 360 == 0) {
                obj.key = true;
            }
        }
        // //随机旋转图片
    function rotate(ev) {
            var randomNum = parseInt((Math.random() * 5));
            var deg = 90 * (randomNum);
            // console.log(deg);
            ev.style.transform = "rotate(" + deg + "deg)";
            if (deg % 360 == 0) {
                ev.key = true;
            }
        }
        // //聚焦密码框显示验证码
    psw.onfocus = function() {
            var div = document.querySelector('.yanzheng');
            div.style.display = 'block';
            // usninf.style.display = 'none';
            randomPic();
        }
        // //更换一组验证码
    update.onclick = function() {
        randomPic();
    }

});