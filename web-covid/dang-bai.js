function DangBai() {
    var baiViet = {
        tieuDe: "",
        moTa: "",
        noiDung: "",
        chuDeId: "",
        anh: "",
        ngayTao: "0001-01-01"
    }
    baiViet.tieuDe = document.getElementById("tieuDe").value;
    baiViet.moTa = document.getElementById("moTa").value;
    baiViet.anh = document.getElementById("hinhAnh").value;
    baiViet.noiDung = document.getElementById("noiDung").value;
    baiViet.chuDeId = document.getElementById("chuDeId").value;
    baiViet.ngayTao = new Date();

    axios.post("https://localhost:44372/api/baiViet", baiViet).then(res => {
        ClearData();
        alert(res.data);
    }).catch(error => {
        if (error.response) {
            alert(error.response.data);
        }
    });
}

function ClearData() {
    document.getElementById("tieuDe").value = "";
    document.getElementById("moTa").value = ""; document.getElementById("hinhAnh").value = "";
    document.getElementById("noiDung").value = "";
    document.getElementById("chuDeId").value = 0;
}