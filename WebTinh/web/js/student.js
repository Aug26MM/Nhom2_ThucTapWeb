function save(){
    let fullname=document.getElementById('fullname').value;
    let email=document.getElementById('email').value;
    let phone=document.getElementById('phone').value;
    let addr=document.getElementById('addr').value;
    let gender="";
    if(document.getElementById('male').checked){
        gender=document.getElementById('male').value;
    } else if(document.getElementById('famale').checked){
        gender=document.getElementById('famale').value;
    }

    if(_.isEmpty(fullname)){
        document.getElementById('fullname-error').innerHTML='Vui lòng nhập họ và tên';      
    } else if(fullname.length<=2){
        document.getElementById('fullname-error').innerHTML='Họ tên không được nhập nhỏ hơn 2 ký tự';
    }else{
        document.getElementById('fullname-error').innerHTML='';
    }
}