<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tạo tài khoản / Đăng nhập</title>
    <link rel="stylesheet" href=".../bootstrap.css">
    <link rel="stylesheet" href=".../font-awesome.css">
    <style>
        body { padding: 20px; max-width: 500px; margin: auto; }
        h2 { margin-bottom: 20px; }
        .input-group { margin-bottom: 15px; }
    </style>
</head>
<body>

    <h2>Tạo tài khoản mới</h2>

    <!-- Hiển thị thông báo nếu alert khác null -->
    <% 
        String alert = (String) request.getAttribute("alert");
        if (alert != null) {
    %>
        <div class="alert alert-danger"><%= alert %></div>
    <% } %>

    <form action="login" method="post">

        <!-- Tài khoản -->
        <div class="input-group">
            <span class="input-group-text"><i class="fa fa-user"></i></span>
            <input type="text" name="username" placeholder="Tài khoản" class="form-control" required/>
        </div>

        <!-- Mật khẩu -->
        <div class="input-group">
            <span class="input-group-text"><i class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Mật khẩu" class="form-control" required/>
        </div>

        <!-- Ghi nhớ đăng nhập -->
        <div class="form-check mb-3">
            <input type="checkbox" name="remember" class="form-check-input" id="rememberCheck">
            <label class="form-check-label" for="rememberCheck">Ghi nhớ đăng nhập</label>
        </div>

        <button type="submit" class="btn btn-primary w-100">Đăng ký</button>

    </form>

</body>
</html>
