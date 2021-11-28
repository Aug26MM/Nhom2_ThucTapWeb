window.onload = function (e) {
	// get post put delete
	axios.get("https://localhost:44372/api/baiViet/layTheoChuDe?maChuDe=7")
		.then(res => {
			var dsBaiViet = res.data;

			var tinTuc15 = "";
			for (let i = 0; i < dsBaiViet.length; i++) {
				tinTuc15 += "<ul class='tintuc15-left1'>" + "<li class='img'>" + "<span><a href=''><img src='./images/" + dsBaiViet[i].anh + "'></a></span></li>" + "<li class='text'><div class='text__content'>" + "<a href='' class='title'>" + dsBaiViet[i].tieuDe + "</a>" + "</div><div class='text__content'>" + "<p>" + dsBaiViet[i].moTa + "</p>" + "</div></li></ul>";
			}
			document.getElementById("tintuc15-left").innerHTML = tinTuc15;

			var tinHot = "";
			tinHot = "<li class='img'><span class='imghot'><a href=''><img src='./images/" + dsBaiViet[dsBaiViet.length - 1].anh + "'></a></span><li><li><div class='text__content'><a href='' class='hot-title'>" + dsBaiViet[dsBaiViet.length - 1].tieuDe + "</a></div></li><li><div class='text__content'><p>" + dsBaiViet[dsBaiViet.length - 1].moTa + "</p></div><li>";

			document.getElementsByClassName("tinhot")[0].innerHTML = tinHot;
		});
}