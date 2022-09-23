<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Information.aspx.cs" Inherits="Weekly_exercises_3__WebForm.Student_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" rel="stylesheet"/>
    <title></title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.33/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center">Cập nhật thông tin sinh viên lớp 55KMT.01</h1>
        <div class="col-md-10 offset-md-1">
            <table class="table">
                <tr>
                    <th>MSSV: </th>
                    <td><asp:TextBox ID="txt_MSSV" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Họ và tên: </th>
                    <td><asp:TextBox ID="txt_HoTen" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Ngày sinh: </th>
                    <td><asp:TextBox ID="txt_NgaySinh"  placeholder="YYYY/MM/DD" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>SĐT: </th>
                    <td>
                        <asp:TextBox ID="txt_SDT" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Địa chỉ (Nội trú): </th>
                    <td><asp:TextBox ID="txt_NoiTru" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Địa chỉ (Ngoại trú): </th>
                    <td><asp:TextBox ID="txt_NgoaiTru" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Trường hợp thuộc diện miễn giảm học phí: </th>
                    <td><asp:TextBox ID="txt_MienGiam" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>Tình hình tham gia bảo hiểm y tế: </th>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Tham gia tại trường</asp:ListItem>
                            <asp:ListItem>Tham gia tại địa phương</asp:ListItem>
                            <asp:ListItem>Tham gia theo hộ gia đ&#236;nh</asp:ListItem>
                            <asp:ListItem>Kh&#244;ng tham gia</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <th style="text-align: center" colspan="2">========== Thông tin liên lạc phụ huynh ==========</th>
                </tr>
                
                <tr>
                    <th>Họ tên phụ huynh: </th>
                    <td><asp:TextBox ID="txt_HTPH" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>

                <tr>
                    <th>SĐT phụ huynh: </th>
                    <td><asp:TextBox ID="txt_SDTPH" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_save" CssClass="btn btn-success" runat="server" Text="Lưu thông tin" OnClick="btn_save_Click" />
                    </td>

                    <td>
                        <asp:Button ID="btn_huy" CssClass="btn btn-danger" runat="server" Text="Clear" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
