window.onload = function (e) {
    GetData();
    localStorage.clear();
}

function GetData() {
    axios.get("https://localhost:44372/api/baiViet").then(res => {
        var lstBaiViet = res.data;
        var str = "<tr class='title'><td>Mã bài viết</td><td>Tiêu đề</td><td>Mô tả</td><td>Nội dung</td><td>Hình ảnh</td><td>Ngày tạo</td><td>Mã chủ đề</td><td>Action</td></tr>";
        for (let i = 0; i < lstBaiViet.length; i++) {
            str += "<tr><td>" + lstBaiViet[i].baiVietId + "</td>" + "<td>" + lstBaiViet[i].tieuDe + "</td>" + "<td>" + lstBaiViet[i].moTa + "</td>" + "<td>" + lstBaiViet[i].noiDung + "</td>" + "<td>" + lstBaiViet[i].anh + "</td>" + "<td>" + lstBaiViet[i].ngayTao + "</td>" + "<td>" + lstBaiViet[i].chuDeid + "</td>" + "<td class='button'><button type='button' onclick='onUpdate(this)'><a href='./sua-bai-viet.html'>Sửa</a></button><button  type='button' onclick='onDelete(this)'>Xóa</button></td></tr>";
        }

        document.getElementById("dataTable").innerHTML = str;
    });
}

function onDelete(td) {
    var selectedRow = td.parentElement.parentElement;
    var baiVietId;

    baiVietId = selectedRow.cells[0].innerHTML;

    var r = confirm("Bạn có muốn xoá bài viết " + baiVietId + " không?");
    if (r == true) {
        axios.delete("https://localhost:44372/api/baiViet?baiVietId=" + baiVietId).then(res => {
            alert(res.data);
            GetData();
        }).catch(error => {
            if (error.response) {
                alert(error.response.data)
            }
        });
    }
}

function onUpdate(td) {
    var selectedRow = td.parentElement.parentElement;
    var baiVietId;
    baiVietId = selectedRow.cells[0].innerHTML;
    localStorage.setItem("baiVietId", baiVietId);
}