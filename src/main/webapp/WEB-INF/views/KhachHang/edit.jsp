<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Khách hàng</title>
    <%--    <link rel="icon" href="img/background_title.jpg" type="image/x-icon">--%>
    <style>

    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h3 style="text-align: center;">khách hàng</h3>
    <div>
        <h1 style="text-align: center; color: black; margin-top: 30px; margin-bottom: 60px">Cập nhật khách hàng</h1>
        <frm:form
                modelAttribute="khachHang"
                action="${pageContext.request.contextPath}/KhachHang/edit/${khachHang.id}"
                method="POST"
                enctype="multipart/form-data">
            <div class="form-group">
                <frm:hidden path="id" value="${khachHang.id}"/>
            </div>
            <div class="row">
                <div class="col-6">
                    <label>Tên khách hàng</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="tenKhachHang"
                               placeholder="text" value="${khachHang.tenKhachHang}"/>
                    <frm:errors cssClass="text-danger" path="tenKhachHang"></frm:errors>
                    <label class="">${tenKhachHangNotNull}</label>
                    <label>${tenKhachHangHopLe}</label>
                </div>
                <div class="col-6">
                    <label>Email</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="email"
                               placeholder="text" value="${khachHang.email}"/>
                    <frm:errors cssClass="text-danger" path="email"></frm:errors>
                    <label class="">${emailNotNull}</label>
                    <label>${emailHopLe}</label>
                </div>
                <div class="col-6">
                    <label>Mật khẩu</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="matKhau"
                               placeholder="text" value="${khachHang.matKhau}"/>
                    <frm:errors cssClass="text-danger" path="matKhau"></frm:errors>
                    <label class="">${matKhauNotNull}</label>
                </div>
                <div class="col-6">
                    <label>Địa chỉ</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="diaChi"
                               placeholder="text" value="${khachHang.diaChi}"/>
                    <frm:errors cssClass="text-danger" path="diaChi"></frm:errors>
                    <label class="">${diaChiNotNull}</label>
                    <label>${diaChiHopLe}</label>
                </div>
                <div class="col-6">
                    <label>Số điện thoại</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="soDienThoai"
                               placeholder="text" value="${khachHang.soDienThoai}"/>
                    <frm:errors cssClass="text-danger" path="soDienThoai"></frm:errors>
                    <label class="">${soDienThoaiNotNull}</label>
                    <label>${soDienThoaiHopLe}</label>
                </div>
                <div class="col-6">
                    <label>Ngày sinh</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="ngaySinh"
                               type="date" value="${khachHang.ngaySinh}"/>
                </div>

                <div class="col-6">
                    <label>Ghi chú</label>
                    <br>
                    <frm:input cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px" path="ghiChu" value="${khachHang.ghiChu}"/>
                </div>
                <div class="col-6">
                    <label>Giới tính</label>
                    <br>
                    <frm:select path="gioiTinh" cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px">
                        <option value="Nam" ${khachHang.gioiTinh == 'Nam' ? 'selected' : ''}>Nam</option>
                        <option value="Nữ" ${khachHang.gioiTinh == 'Nữ' ? 'selected' : ''}>Nữ</option>
                    </frm:select>
                </div>
                <div class="col-6">
                    <label>Trạng thái</label>
                    <br>
                    <frm:select path="trangThai" cssStyle="width: 500px; height: 35px;border-radius: 5px 5px 5px">
                        <option value="1" ${khachHang.trangThai == 1 ? 'selected' : ''}>Không còn hoạt động ✖</option>
                        <option value="0" ${khachHang.trangThai == 0 ? 'selected' : ''}>Còn hoạt động ✔</option>
                    </frm:select>
                </div>
            </div>
            <br><br>
			<frm:form modelAttribute="khachHang" action="${pageContext.request.contextPath}/KhachHang/edit/${khachHang.id}" method="POST">
			    <!-- Các trường input ở đây -->
			    <button type="submit" class="btn btn-primary">Cập nhật</button>
			</frm:form>
            <label>${message}</label>
        </frm:form>
    </div>
</div>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>