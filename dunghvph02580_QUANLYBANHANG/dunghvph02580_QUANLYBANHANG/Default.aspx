<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="dunghvph02580_QUANLYBANHANG._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Hóa Đơn Chi Tiết<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MA_CTHD" DataSourceID="Dunghvph02580_QuanLyBanHang" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MA_CTHD" HeaderText="MA_CTHD" ReadOnly="True" SortExpression="MA_CTHD" />
                    <asp:BoundField DataField="MA_LOAI" HeaderText="MA_LOAI" SortExpression="MA_LOAI" />
                    <asp:BoundField DataField="HOA_DON_MA_HD" HeaderText="HOA_DON_MA_HD" SortExpression="HOA_DON_MA_HD" />
                    <asp:BoundField DataField="HOA_DON_MA_KH" HeaderText="HOA_DON_MA_KH" SortExpression="HOA_DON_MA_KH" />
                    <asp:BoundField DataField="SAN_PHAM_MA_SP" HeaderText="SAN_PHAM_MA_SP" SortExpression="SAN_PHAM_MA_SP" />
                    <asp:BoundField DataField="HOA_DON_2_MA_HD" HeaderText="HOA_DON_2_MA_HD" SortExpression="HOA_DON_2_MA_HD" />
                    <asp:BoundField DataField="LOAISP_MALOAI_SP" HeaderText="LOAISP_MALOAI_SP" SortExpression="LOAISP_MALOAI_SP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="Dunghvph02580_QuanLyBanHang" runat="server" ConnectionString="Data Source=.;Initial Catalog=dunghvph02580_quanlybanhang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HOA_DON_CT]"
                    UPDATECOMMAND =" update HOA_DON_CT set MA_LOAI = @MA_LOAI, HOA_DON_MA_HD =@HOA_DON_MA_HD, HOA_DON_MA_SP =@HOA_DON_MA_SP, SAN_PHAM_MA_SP =@SAN_PHAM_MA_SP, HOA_DON_2_MA_HD =@HOA_DON_2_MA_HD, LOAISP_MALOAI_SP = @LOAISP_MALOAI_SP where MA_CTHD =@MA_CTHD"
                    DELETECOMMAND =" delete from HOA_DON_CT where MA_CTHD= @MA_CTHD"
                    INSERTCOMMAND =" insert into HOA_DON_CT values (@MA_CTHD, @MA_LOAI, @HOA_DON_MA_HD,@HOA_DON_MA_KH, @SAN_PHAM_MA_SP, @HOA_DON_2_MA_HD, @LOAISP_MALOAI_SP)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="two">
            <h5>Hóa Đơn<asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MA_HD" DataSourceID="Dunghvph02580_QuanLyBanHang2" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MA_HD" HeaderText="MA_HD" ReadOnly="True" SortExpression="MA_HD" />
                    <asp:BoundField DataField="SO_HD" HeaderText="SO_HD" SortExpression="SO_HD" />
                    <asp:BoundField DataField="MA_KH" HeaderText="MA_KH" SortExpression="MA_KH" />
                    <asp:BoundField DataField="NGAY_LAP_HD" HeaderText="NGAY_LAP_HD" SortExpression="NGAY_LAP_HD" />
                    <asp:BoundField DataField="KHACHHANG_MAKH" HeaderText="KHACHHANG_MAKH" SortExpression="KHACHHANG_MAKH" />
                    <asp:BoundField DataField="KHACHHANG_TENKH" HeaderText="KHACHHANG_TENKH" SortExpression="KHACHHANG_TENKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="Dunghvph02580_QuanLyBanHang2" runat="server" ConnectionString="Data Source=.;Initial Catalog=dunghvph02580_quanlybanhang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HOA_DON]"
                    UPDATECOMMAND =" update HOA_DON set SO_HD =@SO_HD, MA_KH =@MA_KH, NGAY_LAP_HD =@NGAY_LAP_HD, KHACHHANG_MAKH =@KHACHHANG_MAKH, KHACHHANG_TENKH =@KHACHHANG_TENKH WHERE MA_HD =@MA_HD"
                    DELETECOMMAND =" delete from HOA_DON where MA_HD =@MA_HD"
                    INSERTCOMMAND =" insert into HOA_DON values (@MA_HD, @SO_HD, @MA_KH, @NGAY_LAP_HD, @KHACHHANG_MAKH, @KHACHHANG_TENKH)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="three">
            <h5>Loại Sản Phẩm<asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="MA_LOAI_SP" DataSourceID="Dunghvph02580_QuanLyBanHang3" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MA_LOAI_SP" HeaderText="MA_LOAI_SP" ReadOnly="True" SortExpression="MA_LOAI_SP" />
                    <asp:BoundField DataField="TEN_LOAI" HeaderText="TEN_LOAI" SortExpression="TEN_LOAI" />
                    <asp:BoundField DataField="SAN_PHAM_MA_SP" HeaderText="SAN_PHAM_MA_SP" SortExpression="SAN_PHAM_MA_SP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="Dunghvph02580_QuanLyBanHang3" runat="server" ConnectionString="Data Source=.;Initial Catalog=dunghvph02580_quanlybanhang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [LOAI_SP]"
                    UPDATECOMMAND ="update LOAI_SP set TEN_LOAI =@TEN_LOAI, SAN_PHAM_MA_SP =@SAN_PHAM_MA_SP where MA_LOAI_SP=@MA_LOAI_SP"
                    DELETECOMMAND ="delete from LOAI_SP where MA_LOAI_SP =@MA_LOAI_SP"
                    INSERTCOMMAND ="insert into LOAI_SP values (@MA_LOAI_SP, @TEN_LOAI, @SAN_PHAM_MA_SP)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="four">
            <h5>Sản Phẩm<asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataKeyNames="MA_SP" DataSourceID="Dunghvph02580_QuanLyBanHang4" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MA_SP" HeaderText="MA_SP" ReadOnly="True" SortExpression="MA_SP" />
                    <asp:BoundField DataField="MA_LOAI_SP" HeaderText="MA_LOAI_SP" SortExpression="MA_LOAI_SP" />
                    <asp:BoundField DataField="TEN_SP" HeaderText="TEN_SP" SortExpression="TEN_SP" />
                    <asp:BoundField DataField="DONGIA" HeaderText="DONGIA" SortExpression="DONGIA" />
                    <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="Dunghvph02580_QuanLyBanHang4" runat="server" ConnectionString="Data Source=.;Initial Catalog=dunghvph02580_quanlybanhang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [SAN_PHAM]"
                    UPDATECOMMAND ="update SAN_PHAM set MA_LOAI_SP =@MA_LOAI_SP, TEN_SP =@TEN_SP, DONGIA =@DONGIA, MOTA =@MOTA where MA_SP=@MA_SP"
                    DELETECOMMAND ="delete from SAN_PHAM where MA_SP =@MA_SP"
                    INSERTCOMMAND ="insert into SAN_PHAM values (@MA_SP, @MA_LOAI_SP, @TEN_SP, @DONGIA, @MOTA)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
        <li class="five">
            <h5>Khách Hàng<asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" DataKeyNames="MA_KH" DataSourceID="Dunghvph02580_QuanLyBanHang5" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MA_KH" HeaderText="MA_KH" ReadOnly="True" SortExpression="MA_KH" />
                    <asp:BoundField DataField="TEN_KH" HeaderText="TEN_KH" SortExpression="TEN_KH" />
                    <asp:BoundField DataField="DIA_CHI" HeaderText="DIA_CHI" SortExpression="DIA_CHI" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="GMAIL" HeaderText="GMAIL" SortExpression="GMAIL" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="Dunghvph02580_QuanLyBanHang5" runat="server" ConnectionString="Data Source=.;Initial Catalog=dunghvph02580_quanlybanhang;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [KHACH_HANG]"
                    UPDATECOMMAND ="update KHACH_HANG set TEN_KH =@TEN_KH, DIA_CHI=@DIA_CHI, SDT=@SDT, EMAIL=@GMAIL where MA_KH=@MA_KH "
                    DELETECOMMAND ="delete from KHACH_HANG where MA_KH=@MA_KH"
                    INSERTCOMMAND ="insert into KHACH_HANG values (@MA_KH, @TEN_KH, @DIA_CHI, @SDT, @GMAIL)"
                    ></asp:SqlDataSource>
            </h5>
        </li>
    </ol>
</asp:Content>
