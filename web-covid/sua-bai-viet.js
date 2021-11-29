CKEDITOR.replace( 'noiDung' );

window.onload = function (e) {
    var baiVietId = localStorage.getItem("baiVietId");
    axios.get("https://localhost:44372/api/baiViet/layTheoBaiVietId?baiVietId=" + baiVietId).then(res => {
        var baiViet = res.data;
        document.getElementById("tieuDe").value = baiViet.tieuDe;
        document.getElementById("moTa").value = baiViet.moTa;
        document.getElementById("chuDeId").value = baiViet.chuDeid;
        document.getElementById("noiDung").value = baiViet.noiDung;

    }).catch(error => {
        if (error.response) {
            alert(error.response.data);
        }
    });
}

function onUpdate() {
    var baiViet = {
        baiVietId: "",
        tieuDe: "",
        moTa: "",
        noiDung: "",
        chuDeId: "",
        anh: "",
        ngayTao: "0001-01-01"
    }
    baiViet.baiVietId = localStorage.getItem("baiVietId");
    baiViet.tieuDe = document.getElementById("tieuDe").value;
    baiViet.moTa = document.getElementById("moTa").value;
    baiViet.anh = document.getElementById("hinhAnh").value;
    baiViet.noiDung = document.getElementById("noiDung").value;
    baiViet.chuDeId = document.getElementById("chuDeId").value;
    baiViet.ngayTao = new Date();

    axios.put("https://localhost:44372/api/baiViet", baiViet).then(res => {
        alert(res.data);
    }).catch(error => {
        if (error.response) {
            alert(error.response.data);
        }
    });
}