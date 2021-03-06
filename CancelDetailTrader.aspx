<%@ Page Title="" Language="C#" MasterPageFile="~/Share/Wsp.master" AutoEventWireup="true" CodeBehind="CancelDetailTrader.aspx.cs" Inherits="VPB_FX.Modules.DMS.CancelDetailTrader" %>
<%@ Register TagPrefix="cc1" Namespace="C1.Web.C1Input" Assembly="C1.Web.C1Input.2, Version=2.0.20082.434, Culture=neutral, PublicKeyToken=96d8a77dc0c22f6b" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FormContent" runat="server">
 <table id="tblMain" style="width: 100%">
        <tr>
           
            <td id="tdForm" style="width: 75" align="left" valign="top">
                <table style="width: 100%">
                    <tr>
                        <td align="left" valign="top">
                            <fieldset class="fieldsetBg">
                                <legend class="divLegend">THÔNG TIN GIAO DỊCH HỦY</legend>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 118px" class="lblCaption">
                                            FX HO/CN
                                        </td>
                                        <td style="width: 188px" id="tdFX">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 118px" class="lblCaption">
                                            Chi Nhánh
                                        </td>
                                        <td style="width: 188px" id="tdCompany">
                                            &nbsp;
                                        </td>
                                        <td style="width: 100px" class="lblCaption">
                                            Giao dịch
                                        </td>
                                        <td id="tdtxnType" style="width: 279px">
                                        </td>
                                        <td id="tdtuchoi" rowspan="8" align="left" valign="top">
                                            <fieldset>
                                                <legend class="divLegend">Từ chối</legend>Lý do:
                                                <br />
                                                <asp:TextBox runat="server" ID="txtTuChoi" SkinID="TextBox" Width="99%" TextMode="MultiLine"
                                                    Rows="2"></asp:TextBox>
                                                <br />
                                                <asp:Button runat="server" ID="btnTuChoi" CssClass="Button" Text="Từ Chối" OnClientClick="{tuchoi();return false;}" />
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 118px" class="lblCaption">
                                            Mua/Bán
                                        </td>
                                        <td style="width: 188px" id="tdBuyorSell">
                                            &nbsp;
                                        </td>
                                        <td style="width: 100px" class="lblCaption">
                                            Amt
                                        </td>
                                        <td id="tdAmt" style="width: 279px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 118px" class="lblCaption">
                                            Ngày giao dịch
                                        </td>
                                        <td style="width: 188px; color: red " id="tdTradeDate">
                                            &nbsp;
                                        </td>
                                        <td style="width: 100px" class="lblCaption">
                                            Ngày giá trị
                                        </td>
                                        <td id="tdValueDate" style="width: 279px ; color: red ">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr id="trFW">
                                        <td style="width: 118px" class="lblCaption">
                                            Ngày forward
                                        </td>
                                        <td style="width: 188px" id="tdForwardDate">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <div id="infosp1">
                                                <table width ="100%">
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            Tỷ giá
                                                        </td>
                                                        <td style="width: 188px" id="tdRate">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            <span id="spanCCYBuy">Đồng Mua</span>
                                                        </td>
                                                        <td style="width: 100px" id="tdccyBuy">
                                                            &nbsp;
                                                        </td>
                                                        <td style="width: 100px" class="lblCaption">
                                                            KL Mua
                                                        </td>
                                                        <td id="tdamtBuy" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            <span id="spanCCYSell">Đồng Bán</span>
                                                        </td>
                                                        <td style="width: 100px" id="tdccySell">
                                                            &nbsp;
                                                        </td>
                                                        <td style="width: 100px" class="lblCaption">
                                                            KL Bán
                                                        </td>
                                                        <td id="tdamtSell" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px" class="lblCaption">
                                                            SPRD
                                                        </td>
                                                        <td id="tdsprdSP" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <div id="infosw">
                                                <table width="100%">
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            <span id="span1">Đồng base</span>
                                                        </td>
                                                        <td style="width: 188px" id="tdbasesw">
                                                            &nbsp;
                                                        </td>
                                                        <td style="width: 100px" class="lblCaption">
                                                        </td>
                                                        <td id="td3" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            <span id="span2">Đồng Term</span>
                                                        </td>
                                                        <td style="width: 188px" id="tdtermsw">
                                                            &nbsp;
                                                        </td>
                                                        <td style="width: 100px" class="lblCaption">
                                                        </td>
                                                        <td id="td5" style="width: 279px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            Tỷ giá Spot
                                                        </td>
                                                        <td style="width: 188px" id="tdRate1">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px" class="lblCaption">
                                                            Sprd spot
                                                        </td>
                                                        <td id="tdsprdSw1" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px" class="lblCaption">
                                                            Tỷ giá Forward
                                                        </td>
                                                        <td style="width: 188px" id="tdRate2">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px" class="lblCaption">
                                                            Sprd forward
                                                        </td>
                                                        <td id="tdsprdSw2" style="width: 279px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px" class="lblCaption">
                                            Tên KH
                                        </td>
                                        <td id="tdcif_name" style="width: 279px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px" class="lblCaption">
                                            Nội dung yêu cầu
                                        </td>
                                        <td id="tdDes" style="width: 279px" colspan="3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 118px; font-style: italic;" class="lblNormal">
                                            Created by
                                        </td>
                                        <td style="width: 188px; font-style: italic;" class="lblNormal" id="tdCreatedBy">
                                            &nbsp;
                                        </td>
                                        <td style="width: 100px" class="lblCaption">
                                            &nbsp;
                                        </td>
                                        <td id="" style="width: 279px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 118px; font-style: italic;" class="lblNormal">
                                            Created date
                                        </td>
                                        <td style="width: 188px; font-style: italic;" class="lblNormal" id="tdCreatedDate">
                                            &nbsp;
                                        </td>
                                        <td style="width: 100px" class="lblCaption">
                                            &nbsp;
                                        </td>
                                        <td id="" style="width: 279px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top">
                            <fieldset class="fieldsetBg">
                                <legend class="divLegend">DEALER NHẬP GIÁ</legend>
                                <table style="width: 100%;">
                                    <tr id="RateSPFW">
                                        <td style="width: 50%" align="center" valign="top" colspan="2">
                                            <fieldset>
                                                <legend>TỶ GIÁ</legend>
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td class="lblCaption" align="right">
                                                            Tỷ Giá Hủy
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <cc1:C1WebNumericEdit ID="txtTyGia" OnClientBlur="calculateUSDVND();" runat="server"
                                                                Width="100%" Height="40px" Font-Size="Large" Text="0" DecimalPlaces="4" Culture="en-US"
                                                                ThousandsSeparator="true" Value="0" SmartInputMode="false" MaxValue="500000"
                                                                UpDownAlign="None">
                                                            </cc1:C1WebNumericEdit>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </fieldset>
                                        </td>
                                    </tr>
                                    <tr id="RateSW">
                                        <td style="width: 118px">
                                            SPOT RATE
                                        </td>
                                        <td style="width: 279px">
                                            <cc1:C1WebNumericEdit ID="spRate" runat="server" Width="100%" Height="40px" Font-Size="Large"
                                                Text="0" DecimalPlaces="4" Culture="en-US" ThousandsSeparator="true" Value="0"
                                                SmartInputMode="false" MaxValue="500000000000" UpDownAlign="None">
                                            </cc1:C1WebNumericEdit>
                                        </td>
                                        <td style="width: 118px">
                                            FORWARD RATE
                                        </td>
                                        <td style="width: 279px">
                                            <cc1:C1WebNumericEdit ID="fwRate" runat="server" Width="100%" Height="40px" Font-Size="Large"
                                                Text="0" DecimalPlaces="4" Culture="en-US" ThousandsSeparator="true" Value="0"
                                                SmartInputMode="false" MaxValue="500000000000" UpDownAlign="None">
                                            </cc1:C1WebNumericEdit>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="middle" align="center" colspan="4">
                                            <asp:Button ID="btnSave" runat="server" SkinID="SaveButton" OnClientClick="{responseRate(); return false;}" />
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">
        var _ccyBase = "";
        var _ccyTerm = "";
        var _dealid = "";
        var _txntype = "";
        var _objtype = "";
        var tick = 10;
        /***********************************************/
        $(document).ready(function () {
            $("#infosw").attr("style", "display:none");
            $("#infosp1").removeAttr("style");
            showfirstDeal();
        });
        /***********************************************/
        function showfirstDeal() {

            dealid = Qry["dealid"];
            if (dealid == "") {
                alert('Chưa chọn giao dịch')
                window.close();
            }
            if (dealid.length == 36) {
                showdealinfo(dealid);
            } else {
                $("#RateSW").hide();
            }
        }
        /***********************************************/
        function showdealinfo(dealid) {
            _dealid = dealid;
            var url = "CancelDetailTrader.aspx";
            var query = "act=getdealinfo";
            query += "&dealid=" + dealid;
            StartProcessingForm("");
            resetDealerInput();
           
            $.ajax({
                type: "POST",
                url: url,
                data: query,
                success: function (data) {
                    FinishProcessingForm();
                   
                    var adeal = JSON.parse(data);
                    $("#tdCompany").html(adeal.company);

                    displayCompanyFullName(adeal.company);
                    $("#tdFX").html(adeal.txnFxID + "/" + adeal.T24InternalDeal);
                    $("#tdDes").html(adeal.description);
                    $("#tdtxnType").html(adeal.txnType + "/" + adeal.objType);
                    _txntype = adeal.txnType;
                    _objtype = adeal.objType;
                    $("#tdBuyorSell").html(adeal.buyOrsell_Branch);
                    $("#tdAmt").html(addCommas(adeal.amt));
                    $("#tdTradeDate").html(adeal.dealDate);
                    $("#tdValueDate").html(adeal.valueDate);
                    $("#tdccyBuy").html(adeal.ccyBuy);
                    $("#tdccySell").html(adeal.ccySell);
                    $("#tdamtBuy").html(FormatNumber(adeal.amt_buy));
                    $("#tdamtSell").html(FormatNumber(adeal.amt_sell));
                    $("#tdCreatedBy").html(adeal.createdUser);
                    $("#tdCreatedDate").html(adeal.createdDate);
                    $("#tdcif_rate").html(adeal.cif_rate);
                    $("#tdcif_name").html(adeal.cif_name);
                    $("#tdRate").html(adeal.rate);
                    if (adeal.txnType == "SW") {
                        /******show rate,sprd********/
                        $("#infosw").removeAttr("style");
                        $("#infosp1").attr("style", "display:none");
                        $("#tdRate1").show();
                        $("#tdRate1").html(adeal.SpotRate);
                        $("#tdRate2").html(adeal.rate);
                        $("#tdsprdSw1").html(adeal.sprdB);
                        $("#tdsprdSw2").html(adeal.sprdM);
                        $("#tdbasesw").html(adeal.ccyBase);
                        $("#tdtermsw").html(adeal.ccyTerm);
                        /******hide rate,sprd********/
                        $("#tdsprdSP").hide();
                        $("#RateSW").show();
                        $("#RateSPFW").hide();
                        $("#TR_Tygiachan").hide();
                        $("#trFW").show();
                        $("#tdForwardDate").html(adeal.ForwardDate);
                        $("#spanCCYSell").html("CCY Term");
                        $("#spanCCYBuy").html("CCY Base");
                        if (adeal.buyOrsell_Branch == "BUY")
                            $("#tdBuyorSell").html("BUY/SELL");
                        else {
                            $("#tdBuyorSell").html("SELL/BUY");
                        }
                    } else {
                        $("#infosw").attr("style", "display:none");
                        $("#infosp1").removeAttr("style");
                        $("#tdsprdSP").html(adeal.sprdB);
                        $("#tdPA").html(adeal.PA);
                        $("#tdRA").html(adeal.RA);
                        $("#trFW").hide();
                        $("#RateSW").hide();
                        $("#RateSPFW").show();
                        $("#TR_Tygiachan").show();
                        $("#<%=txtTyGia.ClientID %>").focus();
                        $("#spanCCYSell").html("Đồng Bán");
                        $("#spanCCYBuy").html("Đồng Mua");
                        _ccyBase = adeal.ccyBase;
                        if (adeal.ccyBase == adeal.ccyBuy) {
                            _ccyTerm = adeal.ccySell;
                            $("#txtQuoteGiaMB").attr("value", "SELL");
                        } else {
                            _ccyTerm = adeal.ccyBuy;
                            $("#txtQuoteGiaMB").attr("value", "BUY");
                        }

                        if (((adeal.ccyBuy == "USD") && (adeal.ccySell == "VND"))
                            || ((adeal.ccyBuy == "VND") && (adeal.ccySell == "USD"))) {

                            $("#FCYUSD_USDVND").hide();
                        } else {
                            $("#FCYUSD_USDVND").show();
                        }

                        if (adeal.txnType == "FW") {
                            $("#txtDiemKyHanToiDa").attr("value", adeal.DiemKyHanToiDa);
                            $("#txtTyGiaKyHanToiDa").attr("value", adeal.TyGiaKyHanToiDa);
                            $("#txtTyGiaSan").attr("value", adeal.TyGiaSan);
                            SetSvrCtlValue("txtTyGiaChan", "0");
                        } else {
                            $("#txtDiemKyHanToiDa").attr("value", "0");
                            $("#txtTyGiaKyHanToiDa").attr("value", "0");
                            $("#txtTyGiaSan").attr("value", "0");
                        }
                    }

                }
            });
        }
        function displayCompanyFullName(company) {
            var url = "CancelDetailTrader.aspx";
            var query = "act=getcompanyfullname";
            query += "&company=" + company;
            StartProcessingForm("");
            $.ajax({
                type: "POST",
                url: url,
                data: query,
                success: function (CompanyFullName) {
                    FinishProcessingForm();
                    if (CompanyFullName != "") {
                        $("#tdCompany").html(company + " -" + CompanyFullName);
                    }
                }
            });
        }
        /***********************************************/
        function calculateUSDVND() {
            var tygia = new Number(replaceNumber(GetSvrCtlValue("txtTyGia"), ",", ""));
            var fcyusd = new Number(replaceNumber(GetSvrCtlValue("txtfcyusd"), ",", ""));
            var usdvnd = 0;

            SetSvrCtlValue("txtusdvnd", "");

            if (("EUR.GBP.AUD".lastIndexOf(_ccyBase) != -1) && (_ccyTerm == "VND"))
                usdvnd = tygia / fcyusd;
            else if (("EUR.GBP.AUD.USD".lastIndexOf(_ccyBase) == -1) && (_ccyTerm == "VND"))
                usdvnd = tygia * fcyusd;
            else if (_ccyTerm == "USD")
                usdvnd = tygia / fcyusd;
            else if (_ccyBase == "USD")
                usdvnd = tygia * fcyusd;

            if (!isFinite(usdvnd) || usdvnd == 0)
                SetSvrCtlValue("txtusdvnd", "0.0000");
            else
                SetSvrCtlValue("txtusdvnd", FormatNumber(usdvnd));
        }
        /***********************************************/
        function resetDealerInput() {
            SetSvrCtlValue("txtTyGia", "0.0000");
            SetSvrCtlValue("txtfcyusd", "0.0000");
            SetSvrCtlValue("txtusdvnd", "");
        }
        /***********************************************/
        function responseRate() {
            var ccyPair = _ccyBase + _ccyTerm;
            var fcyusd = 0;
            var usdvnd = 0;
            if (ccyPair != "USDVND") {
                calculateUSDVND();
                if (!FormValidated())
                    return false;
                fcyusd = replaceNumber(GetSvrCtlValue("txtfcyusd"), ",", "");
                usdvnd = replaceNumber(GetSvrCtlValue("txtusdvnd"), ",", "");
            }


            var tygia = $("#ctl00_FormContent_txtTyGia").val();
            tygia = replaceNumber(tygia, ",", "");

            var tygiakyhantoida = 0;
            var tygiasan = 0;

            if ((_txntype == "SP") && (_objtype == "SME")) {
                var tygiachan = replaceNumber(GetSvrCtlValue("txtTyGiaChan"), ",", "");
                var chieu_post_gia_dealer = $("#txtQuoteGiaMB").val();
                if (chieu_post_gia_dealer == "BUY") {
                    //if (tygia > tygiachan) {
                    if (1 == 2) {
                        alert("Không được nhập tỷ giá cao hơn tỷ giá chặn.");
                        return false;
                    }
                }
                else {
                    //if (tygia < tygiachan) {
                    if (1 == 2) {
                        alert("Không được nhập tỷ giá thấp hơn tỷ giá chặn.");
                        return false;
                    }
                }
            }
            else if ((_txntype == "FW") && (ccyPair == "USDVND")) {
                tygiakyhantoida = new Number($("#txtTyGiaKyHanToiDa").val());
                tygiasan = new Number($("#txtTyGiaSan").val());
            }

            if (!confirm("Bạn đã chắc chắc chắn với tỷ giá ?"))
                return false;


            var url = "CancelDetailTrader.aspx";
            var query = "act=responserate";
            query += "&dealid=" + _dealid;
            query += "&rate=" + tygia;
            query += "&tygiakyhantoida=" + tygiakyhantoida;
            query += "&tygiasan=" + tygiasan;
            query += "&txntype=" + _txntype;
            query += "&sprate=" + new Number(replaceNumber(GetSvrCtlValue("spRate"), ",", ""));
            query += "&fwrate=" + new Number(replaceNumber(GetSvrCtlValue("fwRate"), ",", ""));

            StartProcessingForm("");
            $.ajax({
                type: "POST",
                url: url,
                data: query,
                success: function (data) {
                    FinishProcessingForm();
                    if (data == "") {
                        alert('Nhập giá hủy cho CN thành công.');
                        window.location.reload(true);
                    }
                    else {
                        alert(data);
                    }
                }
            });
        }
        /***********************************************/
        function tuchoi() {
            if (_dealid.length != 36) {
                alert("Không xác định giao dịch, thao tác không thành công.");
                return false;
            }
            var lydo = new String($("#ctl00_FormContent_txtTuChoi").val());
            if (lydo.trim().length == 0) {
                alert("Bạn chưa nhập lý do từ chối, thao tác không thành công.");
                $("#ctl00_FormContent_txtTuChoi").focus();
                return false;
            }
            var url = "CancelDetailTrader.aspx";
            var query = "act=refusedeal";
            query += "&dealid=" + _dealid;
            query += "&msgrefuse=" + lydo.trim();
            StartProcessingForm("");
            $.ajax({
                type: "POST",
                url: url,
                data: query,
                success: function (data) {
                    FinishProcessingForm();
                    if (data == "") {
                        alert('Từ chối giao dịch thành công.');

                    }
                    else {
                        alert(data);
                    }
                    window.closed();
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ButtonExtendBefore" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ButtonExtend" runat="server">
</asp:Content>
