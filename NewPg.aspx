﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BrainSite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mphead" runat="server">
    <h1>Upload a new photo</h1>
    <style>
    body {
  background: #1D1F20;
}
main {
  height: 100vh;
  width: 100vw;
}

.button {
  background: #2B2D2F;
  height: 80px;
  width: 200px;
  text-align: center;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 0;
  right: 0;
  margin: 0 auto;
  cursor: pointer;
  border-radius: 4px;
}

.text {
  font: bold 1.25rem/1 poppins;
  color: #71DFBE;
  position: absolute;
  top: 50%;
  transform: translateY(-52%);
  left: 0;
  right: 0;
}

.progress-bar {
  position: absolute;
  height: 10px;
  width: 0;
  right: 0;
  top: 50%;
  left: 50%;
  border-radius: 200px;
  transform: translateY(-50%) translateX(-50%);
  background: lighten(#2B2D2F, 15%);
}

svg {
  width: 30px;
  position: absolute;
  top: 50%;
  transform: translateY(-50%) translateX(-50%);
  left: 50%;
  right: 0;
}

.check {
  fill: none;
  stroke: #FFFFFF;
  stroke-width: 3;
  stroke-linecap: round;
  stroke-linejoin: round;
}
        </style>
    <script>
        var basicTimeline = anime.timeline({
            autoplay: false
        });

        var pathEls = $(".check");
        for (var i = 0; i < pathEls.length; i++) {
            var pathEl = pathEls[i];
            var offset = anime.setDashoffset(pathEl);
            pathEl.setAttribute("stroke-dashoffset", offset);
        }

        basicTimeline
            .add({
                targets: ".text",
                duration: 1,
                opacity: "0"
            })
            .add({
                targets: ".button",
                duration: 1300,
                height: 10,
                width: 300,
                backgroundColor: "#2B2D2F",
                border: "0",
                borderRadius: 100
            })
            .add({
                targets: ".progress-bar",
                duration: 2000,
                width: 300,
                easing: "linear"
            })
            .add({
                targets: ".button",
                width: 0,
                duration: 1
            })
            .add({
                targets: ".progress-bar",
                width: 80,
                height: 80,
                delay: 500,
                duration: 750,
                borderRadius: 80,
                backgroundColor: "#71DFBE"
            })
            .add({
                targets: pathEl,
                strokeDashoffset: [offset, 0],
                duration: 200,
                easing: "easeInOutSine"
            });

        $(".button").click(function () {
            basicTimeline.play();
        });

        $(".text").click(function () {
            basicTimeline.play();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="server">
    <table>
        <tr>
            <td style="position: initial">upload </td>
        </tr>
         <tr>
            <td><input type="file" name="datafile" size="40"></td>
        </tr>
    </table>
    <link href="https://fonts.googleapis.com/css?family=Poppins:600" rel="stylesheet">


<main>
  <div class="button">
    <div class="text">Submit</div>
  </div>
  <div class="progress-bar"></div>
  <svg x="0px" y="0px"
	 viewBox="0 0 25 30" style="enable-background:new 0 0 25 30;">
    <path class="check" class="st0" d="M2,19.2C5.9,23.6,9.4,28,9.4,28L23,2"/>
  </svg>
</main>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="explanation" runat="server">
    <p>To upload a new picture click on the "new" Botton and select the photo ypu want to upload</p>
</asp:Content>
