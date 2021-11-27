window.onload = function(e){
	axios.get("https://localhost:44372/api/baiViet")
	.then(res=>{
		document.getElementById('tintuc15-left').innerHTML = 
		'<ul class="tintuc15-left1"><li class="img"><span><a href=""><img src="./images/anhhot2.jpg"></a></span></li><li class="text"><div class="text__content"><a href="" class="title">Chiều 22/11: Đã phân bổ gần 135 triệu liều vaccine phòng COVID-19; Bến Tre thêm 155 F0 trong cộng đồng</a></div>
                        <div class="text__content">
                            <p>SKĐS - Bộ Y tế cho biết, đến nay đã tiếp nhận và phân bổ tổng số gần 135 triệu liều vaccine phòng COVID-19; cập nhật đến 13h30h ngày...</p>
                         </div>
                    </li>
                </ul>';
	});
	}